Postgres
=========
Ansible role for the installation of Postgres.

Requirements
------------
This role was intended for use with Ubuntu Trusty 14.04 64bit.

Role Variables
--------------

##### `postgres_encoding`
Default: `UTF-8`

The encoding used to create the database cluster.

##### `postgres_version`
Default: `9.4.2`

The version of Postgres to be installed. This will also be used to find the appropriate tarball in `postgres/files/`.

##### `postgres_source_location`
Default: `/opt/src/postgres/`

The remote directory where the Postgres tarball will be copied to and unpacked.

**Note**: This variable expects a trailing slash on the path. Thus, `/opt/src/postgres/` not `/opt/src/postgres`. This default variable is composed with other variables in `postgres/vars/main.yml` to create an absolute path to the tarball and the unpacked source. 

##### `postgres_user`
Default: `postgres`

The user used to created the database cluster.

License
-------
MIT
