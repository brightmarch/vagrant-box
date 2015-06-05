# Bright March Vagrant Box
An Ubuntu 12.04 64-bit box that includes:

* Compass 0.12.4
* Go 1.4.1
* God 0.13.4
* Node 0.10.30
* PHP 5.6.5
* php-imagick 3.1.2
* php-redis 2.2.5
* php-ssh2 0.12
* php-zmq 1.1.2
* Postgres 9.3.4
* Redis 2.8.0
* Ruby 2.1.2
* SASS 3.3.4
* ZeroMQ 4.0.4
* ZURB Foundation 4.3.2

## Boxes
You are free to use our boxes if you like. Below are the direct links to the .box files stored on Amazon AWS.

* [2015-06-04] [trusty64-2.0.0.box](https://s3.amazonaws.com/brightmarch.build/boxes/trusty64-2.0.0.box)
* [2015-02-09] [precise64-1.3.0.box](https://s3.amazonaws.com/brightmarch.build/boxes/precise64-1.3.0.box)
* [2015-01-21] [precise64-1.2.0.box](https://s3.amazonaws.com/brightmarch.build/boxes/precise64-1.2.0.box)
* [2014-08-19] [precise64-1.1.0.box](https://s3.amazonaws.com/brightmarch.build/boxes/precise64-1.1.0.box)
* [2014-08-10] [precise64-1.0.0.box](https://s3.amazonaws.com/brightmarch.build/boxes/precise64-1.0.0.box)


## Packaging
After bringing up the provisioned box, run:

```sh
$ vagrant package --output precise64-`cat VERSION`.box
```

The `<VERSION>` placeholder should be replace by incrementing the `VERSION` file associated with this repository.

## Changelog

### 2.0.0
* Upgrade to Ubuntu 14.04.
* Added RabbitMQ.
* Provisioning via Ansible.

### 1.3.0
* Upgraded PHP to 5.6.5.
* Added the `php-imagick` extension.

### 1.2.0
* Added the `php-ldap` extension.
* Added the `php-ssh2` extension.
* Added Go 1.4.1.

### 1.1.0
* Upgraded Postgres to 9.3.4.
* Locked down versions of Compass, God, and SASS.
* Fixed path issues when compiling `php-zmq`.
* Set PHP `memory_limit` value to `512MB`.
* Set PHP `upload_max_filesize` value to `32MB`.

### 1.0.0
* Initial release of Bright March Vagrant box.
