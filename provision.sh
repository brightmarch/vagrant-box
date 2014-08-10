#!/usr/bin/env bash

# Change these accordingly.
RUBY_VERSION="2.0.0-p247"
ZURB_FOUNDATION_VERSION="4.3.2"
POSTGRESQL_VERSION="9.2.4"
REDIS_VERSION="2.8.0"
PHP_VERSION="5.5.12"

# Install some basic libraries and tools.
apt-get update
apt-get install -y bash-completion build-essential vim libssl-dev openssl git bison flex curl libxml2-utils htop

# Postgres libraries
apt-get install -y libkrb5-dev libxml2 libxml2-dev libxslt1-dev libossp-uuid-dev uuid python-dev libreadline6 libreadline-dev

# PHP libraries
apt-get install -y autoconf libcurl4-openssl-dev libmcrypt4 libmcrypt-dev libicu48 libicu-dev libpng12-dev libjpeg8-dev

# Ensure we are using UTF-8 and in UTC for everything.
echo UTC > /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata
locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

# Update the default .profile so it includes the
# PostgreSQL command line tools in the standard $PATH
wget -qO /etc/skel/.profile https://s3.amazonaws.com/brightmarch.build/.profile

# We will manually compile the most important packages ourselves
# and the code for them is stored in /opt/src.
mkdir -p /opt/src/{ruby,php,php-redis,php-oauth,redis,postgresql}

cd /opt/src/ruby
wget -q https://s3.amazonaws.com/brightmarch.build/ruby-$RUBY_VERSION.tar.gz
tar -xzf ruby-$RUBY_VERSION.tar.gz
cd ruby-$RUBY_VERSION
./configure
make && make install
gem install sass compass god
gem install zurb-foundation -v $ZURB_FOUNDATION_VERSION

# Create a postgres user that will manage everything Postgres.
useradd --home-dir /home/postgres --create-home --shell /bin/bash --user-group postgres

cd /opt/src/postgresql
wget -q https://s3.amazonaws.com/brightmarch.build/postgresql-$POSTGRESQL_VERSION.tar.bz2
tar -xjf postgresql-$POSTGRESQL_VERSION.tar.bz2
cd postgresql-$POSTGRESQL_VERSION
./configure --disable-debug --enable-thread-safety --with-gssapi --with-openssl --with-libxml --with-libxslt --with-ossp-uuid --with-python --without-bonjour
make world && make install

# Now that Postgres is installed, su into the postgres user to set up the database cluster.
su - postgres -c "initdb -D /home/postgres/cluster -E 'UTF-8'"

# Install the Postgres init.d service script.
wget -qO /etc/init.d/postgres https://s3.amazonaws.com/brightmarch.build/postgres
chmod +x /etc/init.d/postgres
update-rc.d postgres defaults

cd /opt/src/redis
wget -q https://s3.amazonaws.com/brightmarch.build/redis-$REDIS_VERSION.tar.gz
tar -xzf redis-$REDIS_VERSION.tar.gz
cd redis-$REDIS_VERSION
make && make install
mkdir -p /etc/redis
cp redis.conf /etc/redis/redis.conf
sed -i 's/daemonize no/daemonize yes/g' /etc/redis/redis.conf

# Install the Redis init.d service script.
wget -qO /etc/init.d/redis https://s3.amazonaws.com/brightmarch.build/redis
chmod +x /etc/init.d/redis
update-rc.d redis defaults

cd /opt/src/php
wget -q https://s3.amazonaws.com/brightmarch.build/php-$PHP_VERSION.tar.gz
tar -xzf php-$PHP_VERSION.tar.gz
cd php-$PHP_VERSION
./configure --with-openssl --with-zlib --with-curl --enable-zip --with-xmlrpc --enable-soap --enable-sockets --with-pgsql --with-pdo-pgsql --with-mcrypt --enable-mbstring --with-libxml-dir --enable-intl --enable-pcntl --enable-opcache --with-gd --with-jpeg-dir=/usr --enable-exif
make && make install
cp php.ini-development /usr/local/lib/php.ini

cd /opt/src/php-redis
git clone git://github.com/nicolasff/phpredis.git
cd phpredis
phpize
./configure
make && make install

# Add redis.so to the list of extensions so PHP will pick it up.
echo "extension=redis.so" >> /usr/local/lib/php.ini
echo "date.timezone=UTC" >> /usr/local/lib/php.ini

# Add some helpful bash and vim files.
cp /etc/skel/.profile /home/vagrant/.profile
wget -qO /home/vagrant/.bash_aliases https://s3.amazonaws.com/brightmarch.build/.bash_aliases_vagrant
wget -qO /home/vagrant/.bash_envvars https://s3.amazonaws.com/brightmarch.build/.bash_envvars_vagrant
wget -qO /home/vagrant/.vimrc https://s3.amazonaws.com/brightmarch.build/.vimrc

chown -R vagrant:vagrant /home/vagrant
