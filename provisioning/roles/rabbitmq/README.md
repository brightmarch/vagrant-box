RabbitMQ
=========
Ansible role for the installation of RabbitMQ.

Requirements
------------
This role was intended for use with Ubuntu Trusty 14.04 64bit.

Role Variables
--------------
##### `rabbitmq_version`

Default: `3.5.3`

The version of RabbitMQ to be installed. This will also be used to find the appropriate tarball in `rabbitmq/files/`.

##### `rabbitmq_source_location`
Default: `/opt/src/rabbitmq/`

The remote directory where the RabbitMQ tarball will be copied to and unpacked.

**Note**: This variable expects a trailing slash on the path. Thus, `/opt/src/rabbitmq/` not `/opt/src/rabbitmq`. This default variable is composed with other variables in `rabbitmq/vars/main.yml` to create an absolute path to the tarball and the unpacked source. 

License
-------
MIT
