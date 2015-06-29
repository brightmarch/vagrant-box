Ruby
=========
Ansible role for the installation of Ruby and various Gems.

Requirements
------------
This role was intended for use with Ubuntu Trusty 14.04 64bit.

Role Variables
--------------
### Ruby

##### `ruby_version`
Default: `2.1.2`

The version of Ruby to be installed. This will also be used to find the appropriate tarball in `ruby/files/`.

##### `ruby_source_location`
Default: `/opt/src/ruby/`

The remote directory where the Ruby tarball will be copied to and unpacked.

**Note**: This variable expects a trailing slash on the path. Thus, `/opt/src/ruby/` not `/opt/src/ruby`. This default variable is composed with other variables in `ruby/vars/main.yml` to create an absolute path to the tarball and the unpacked source. 

### Gems

##### `sass_version`
Default: `3.3.4`

The version of the Sass gem to be installed.

##### `compass_version`
Default: `0.12.4`

The version of the Compass gem to be installed.

##### `zurb_foundation_version`
Default: `4.3.2`

The version of the Zurb Foundation gem to be installed.

##### `god_version`
Default: `0.13.4`

The version of the God gem to be installed.

License
-------
MIT