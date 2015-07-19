# Bright March Vagrant Box
A Debian Wheezy 7.8 64-bit box that includes:

* Compass 0.12.4
* Go 1.4.2
* God 0.13.4
* Node 0.12.7
* PHP 5.6.10
* php-imagick 3.1.2
* php-redis 2.2.7
* php-ssh2 0.12
* php-zmq 1.1.2
* Postgres 9.4.4
* RabbitMQ 3.5.3
* Redis 3.0.2
* Ruby 1.9.4
* SASS 3.3.4
* ZeroMQ 4.0.4
* ZURB Foundation 4.3.2

## Boxes
Our boxes are available on Atlas. We have two machines available, the base box and the fully provisioned box. The base box is a bare-bones Debian 7.8 system. The fully provisioned box contains the software listed above.

* [brightmarch/debian7.8-amd64](https://atlas.hashicorp.com/brightmarch/boxes/debian7.8-amd64)
* [brightmarch/debian7.8-amd64-base](https://atlas.hashicorp.com/brightmarch/boxes/debian7.8-amd64-base)

## Requirements
Ansible must be in your `$PATH` in order for Vagrant to provision the box. See the [Ansible documentation](http://docs.ansible.com/intro_installation.html) for instructions on how to install Ansible.

## Building and Packaging

## Changelog

### 1.1.0
* Added Node 0.12.7.

### 1.0.0
* Initial release of the new Debian based Bright March box based on VMWare Fusion.
