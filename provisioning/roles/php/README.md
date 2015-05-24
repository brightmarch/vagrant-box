PHP
=========

Installs PHP and the following PHP extensions.

- PHP-Imagick
- PHP-Redis
- PHP-SSH2
- PHP-ZMQ

Requirements
------------

This role is configured to work with Postgresql, and expects that his has been installed prior.

Role Variables
--------------

#### PHP

##### `production`

Default: `false`

Determines if the environment is development or production. Eventually, when production is true, the role will kick off a PHP-FPM installation instead.

##### `php_version`

Default: `5.6.5`

The version of PHP to be installed. This will also be used to find the appropriate tarball in `php/files/`.

##### `php_source_location`

Default: `/opt/src/php/`

The remote directory where the PHP tarball will be copied to and unpacked.

#### PHP-Imagick

##### `php_imagick_version`

Default: `3.1.2`

The version of PHP-Imagick to be installed. This will also be used to find the appropriate tarball in `php/files/`.

##### `php_imagick_source_location`

Default: `/opt/src/php-imagick`

The remote directory where the PHP-Imagick tarball will be copied to and unpacked.

#### PHP-SSH2

#####`php_ssh2_version`

Default: `0.12`

The version of PHP-SSH2 to be installed. This will also be used to find the appropriate tarball in `php/files/`.

##### `php_ssh2_source_location`

Default: `/opt/src/php-ssh2`

The remote directory where the PHP-SSH2 tarball will be copied to and unpacked.

#### PHP-ZMQ

##### `php_zmq_version`

Default: `1.1.2`

The version of PHP-ZMQ to be installed. This will also be used to find the appropriate tarball in `php/files/`.

##### `php_zmq_source_location`

Default: `/opt/src/zmq`

The remote directory where the PHP-ZMQ tarball will be copied to and unpacked.

#### PHP-Redis

##### `php_redis_version`

Default: `2.2.5`

The version of PHP-Redis to be installed. This will also be used to find the appropriate tarball in `php/files/`.

##### `php_redis_source_location`

Default: `/opt/src/php-redis`

The remote directory where the PHP-Redis tarball will be copied to and unpacked.


**Note**: All of the `*_source_location` variables expect a trailing slash on the path. Thus, `/opt/src/php/` not `/opt/src/php`. These default variables are composed with other variables in `php/vars/main.yml` to create absolute paths to the tarball and the unpacked source. 

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: php, production: true }

License
-------

MIT

