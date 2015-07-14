# Bright March Vagrant Box
A Debian Wheezy 7.8 64-bit box that includes:

* Compass 0.12.4
* Go 1.4.1
* God 0.13.4
* Node 0.10.30
* PHP 5.6.10
* php-imagick 3.1.2
* php-redis 2.2.5
* php-ssh2 0.12
* php-zmq 1.1.2
* Postgres 9.4.4
* RabbitMQ 3.5.3
* Redis 2.8.0
* Ruby 1.9.4
* SASS 3.3.4
* ZeroMQ 4.0.4
* ZURB Foundation 4.3.2

## Boxes
You are free to use our boxes if you like. Below are the direct links to the .box files stored on Amazon AWS.

* [2015-07-13] [wheezy78-1.0.0.box](https://s3.amazonaws.com/brightmarch.boxes/wheezy78-1.0.0.box)

## Requirements
Ansible must be in your `$PATH` in order for Vagrant to provision the box. See the [Ansible documentation](http://docs.ansible.com/intro_installation.html) for instructions on how to install Ansible.

## Packaging
After bringing up the provisioned box, run:

```sh
$ vagrant package --output wheezy78-`cat VERSION`.box
```

The `<VERSION>` placeholder should be replace by incrementing the `VERSION` file associated with this repository.

## Changelog

### 1.0.0
* Initial release of the new Debian based Bright March box based on VMWare Fusion.
