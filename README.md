# Bright March Vagrant Box
A Debian Jessie 8.10 64-bit box that includes:

* Compass 0.12.4
* Go 1.4.2
* Node 0.10.0
* PHP 5.6.11
* php-redis 2.2.7
* php-ssh2 0.12
* php-zmq 1.1.2
* Postgres 9.4.4
* Redis 3.0.2
* Ruby 1.9.4
* SASS 3.3.4
* ZeroMQ 4.0.4
* ZURB Foundation 4.3.2

## Boxes
You are free to use our boxes if you like. They are hosted using Hashicorp's Atlas service.

* [brightmarch/debian-8.1-amd64](https://atlas.hashicorp.com/brightmarch/boxes/debian-8.1-amd64)

## Requirements
Ansible must be in your `$PATH` in order for Vagrant to provision the box. See the [Ansible documentation](http://docs.ansible.com/intro_installation.html) for instructions on how to install Ansible.

## Building and Packaging
After bringing up the provisioned box, run:

```sh
$ vagrant package --output precise64-`cat VERSION`.box
```

The `<VERSION>` placeholder should be replace by incrementing the `VERSION` file associated with this repository.

## Changelog

### 2.0.0
* Switched back to Virtualbox because it is more widely supported, free, and easier to package.
* Upgraded to Debian Jessie 8.1 64bit.
* Upgraded PHP to 5.6.11.
* Removed `php-imagick` because it was a pain to get compiled and I just don't have that time.
* Downgraded Node to 0.10.0 because of some bullshit in-fighting in the Node and IO.js communities about Jest and JSDom and who gives a shit it's what is needed to make JSDom work. 
* Removed RabbitMQ because a project we're working on really isn't going to use it just yet and I didn't want an unused service just sitting there.
