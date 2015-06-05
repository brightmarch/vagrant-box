Node
=========
Ansible role for the installation of Node.

Requirements
------------
This role was intended for use with Ubuntu Trusty 14.04 64bit.

Role Variables
--------------

##### `node_version`
Default: `0.10.30`

The version of Node to be installed. This will also be used to find the appropriate tarball in `node/files/`.

##### `node_source_location`
Default: `/opt/src/node/`

The remote directory where the Node tarball will be copied to and unpacked.

**Note**: This variable expects a trailing slash on the path. Thus, `/opt/src/node/` not `/opt/src/node`. This default variable is composed with other variables in `node/vars/main.yml` to create an absolute path to the tarball and the unpacked source. 

License
-------
MIT
