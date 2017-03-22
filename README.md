# Bright March Vagrant Box
A Debian Jessie 8.4 64-bit box for VirtualBox 5.1 that includes:

* Node 6.10.0
* npm 3.10.10
* PHP 7.1.13
* PHP Composer 1.4.1
* PHP Phing 2.16.0
* Postgres 9.4.10
* Redis 2.8.17
* Ruby 2.1.5

## Boxes
You are free to use our boxes if you like. They are hosted using Hashicorp's Atlas service.

* [brightmarch/debian-jessie64](https://atlas.hashicorp.com/brightmarch/boxes/debian-jessie64)
* [brightmarch/debian-8.7-amd64](https://atlas.hashicorp.com/brightmarch/boxes/debian-8.7-amd64)
* [brightmarch/debian-8.4-amd64](https://atlas.hashicorp.com/brightmarch/boxes/debian-8.4-amd64)

## Requirements
Before building the box, please ensure the [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest) plugin and VirtualBox 5.1.x (with guest extensions) are installed.

## Changelog

### 3.0.0
* New naming convention for the box. It will now stay `brightmarch/debian-jessie64` with a separate version number for each release.
* Moved to using a shell provider because it is so easy.

### 2.5.0
* Added the php-shmop extension.

### 2.4.0
* Moved back to manually compiling PHP.
* Upgraded Node to 6.10.0.
* Upgraded PHP to 7.1.3.
* Upgraded PHP Composer to 1.4.1.
* Upgraded PHP Phing to 2.16.0.
* Upgraded Postgres to 9.4.10.
* Removed Go because we don't use it.

### 2.2.0
* Major change from manually compiling software to using Aptitude for Postgres, Redis, and PHP. Node is still manually compiled.
* Upgraded Node to 5.11.0.
* Upgraded PHP to 7.0.6.
* Upgraded PHP Composer to 1.0.3.
* Upgraded PHP Phing to 2.14.0.
* Downgraded Postgres to 9.4.6.
* Downgraded Redis to 2.8.17.

### 2.1.0
* Upgraded Node to 4.3.2.
* Upgraded PHP to 7.0.4.
* Upgraded Postgres to 9.5.1.
* Upgraded Redis to 3.0.7.
* Removed php-ssh.
* Removed php-zmq.
* Removed ZeroMQ.
* Removed RabbitMQ.
* Removed Ruby gems Compass, SASS, Foundation, and God.

### 2.0.3
* Upgraded PHP to 5.6.12.

### 2.0.2
* Reduced box size by 300MB.

### 2.0.1
* Added Phing 2.11.0 for building PHP applications.
* More README details on how to package the box.
* Upgraded Node to 0.10.29.

### 2.0.0
* Switched back to Virtualbox because it is more widely supported, free, and easier to package.
* Upgraded to Debian Jessie 8.1 64bit.
* Upgraded PHP to 5.6.11.
* Removed `php-imagick` because it was a pain to get compiled and I just don't have that time.
* Downgraded Node to 0.10.0 because of some bullshit in-fighting in the Node and IO.js communities about Jest and JSDom and who gives a shit it's what is needed to make JSDom work. 
* Removed RabbitMQ because a project we're working on really isn't going to use it just yet and I didn't want an unused service just sitting there.
