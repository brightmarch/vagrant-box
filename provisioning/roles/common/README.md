Bright March Common
===================
Performs a basic set of configurations that are common for Bright March development box images.

Tasks
-----
- This will install the following packages:
    - bash-completion
    - build-essential
    - vim
    - libssl-dev
    - openssl
    - git
    - bison
    - flex
    - curl
    - libxml2-utils
    - htop
- Set the timezone to `UTC`.
- Set the locale to `en_US.UTF-8`.
- Adds a standard set of user configuration files.

Requirements
------------
This role was intended for use with Ubuntu Trusty 14.04 64bit.

License
-------
MIT