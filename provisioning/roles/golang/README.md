Go
=========
Ansible role for the installation of Go.

Requirements
------------
This role was intended for use with Ubuntu Precise 12.04.

Role Variables
--------------

##### `golang_version`
Default: `1.4.1`

The version of Go to be installed. This will also be used to find the appropriate tarball in `golang/files/`.

##### `golang_tarball_location`
Default: `/opt/src/golang/`

The remote directory where the Go tarball will be copied to and unpacked.

**Note**: This variable expects a trailing slash on the path. Thus, `/opt/src/golang/` not `/opt/src/golang`. This default variable is composed with other variables in `golang/vars/main.yml` to create an absolute path to the tarball and the unpacked source. 

License
-------
MIT
