Redis
=========

Ansible role for the installation of Redis.

Requirements
------------

This role was intended for use with Ubuntu Precise 12.04

Role Variables
--------------

##### `redis_version`

Default: `2.8.0`

Version of Redis to be installed. This will also be used to find the appropriate tarball in `redis/files/`

##### `redis_source_location`

Default: `/opt/src/redis/`

The remote directory where the Redis tarball will be copied to and unpacked.

**Note**: This variable expects a trailing slash on the path. Thus, `/opt/src/redis/` not `/opt/src/redis`. This default variable is composed with other variables in `redis/vars/main.yml` to create absolute paths to the tarball and the unpacked source. 

License
-------

MIT

