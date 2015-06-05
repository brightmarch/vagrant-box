ZeroMQ
=========
Ansible role for the installation of ZeroMQ.

Requirements
------------
This role was intended for use with Ubuntu Trusty 14.04 64bit.

Role Variables
--------------
##### `zeromq_version`

Default: `4.0.4`

The version of ZeroMQ to be installed. This will also be used to find the appropriate tarball in `zeromq/files/`.

##### `zeromq_source_location`
Default: `/opt/src/zeromq/`

The remote directory where the ZeroMQ tarball will be copied to and unpacked.

**Note**: This variable expects a trailing slash on the path. Thus, `/opt/src/zeromq/` not `/opt/src/zeromq`. This default variable is composed with other variables in `zeromq/vars/main.yml` to create an absolute path to the tarball and the unpacked source. 

License
-------
MIT
