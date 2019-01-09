# Bright March Vagrant Box
A Debian Jessie 8.11.0 64-bit box for VirtualBox 6.0 that includes:

* PHP 7.2.13
* PHP Composer 1.8.0
* PHP Phing 2.16.1
* Postgres 9.4.19
* Redis 2.8.17

## Box
You are free to use our box if you like. They are hosted using Hashicorp's Atlas service.

* [brightmarch/debian-jessie64](https://app.vagrantup.com/brightmarch/boxes/debian-jessie64)

## Requirements
Before building the box, please ensure the [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest) plugin and VirtualBox 6.0.x (with guest extensions) are installed.

## Packaging
Package the box with the following command:

```
vagrant package --output=debian-jessie64-`cat VERSION`.box
```

## Changelog

### 3.6.0
* Upgraded PHP to 7.2.13.
* Compiled on VirtualBox 6.0.0.

### 3.5.1
* Removed Node and NPM.
* Upgraded PHP to 7.2.12.
* Upgraded PHP Composer to 1.7.3.

### 3.4.0
* Upgraded Debian to 8.11.0.
* Upgraded Node to 6.14.4.
* Upgraded PHP to 7.2.9.
* Upgraded PHP Composer to 1.7.2.
* Upgraded Postgres to 9.4.19.
* Compiled on VirtualBox 5.2.18.

### 3.3.2
* Upgraded PHP to 7.2.8.
* Added the php-soap extension.
* Compiled on VirtualBox 5.2.

### 3.3.1
* Upgraded Node to 6.14.1.
* Upgraded PHP to 7.2.4.
* Upgraded PHP Composer to 1.6.4.
* Compiled on VirtualBox 5.2.

### 3.3.0
* Upgraded Debian to 8.10.0.
* Upgraded PHP to 7.2.3.
* Added the php-gd extension.
* Added the php-bcmath extension.

### 3.2.0
* Upgraded Node to 6.12.2.
* Upgraded PHP to 7.2.0.

### 3.1.0
* Upgraded PHP to 7.1.8.

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
* Switched back to Virtualbox.
* Upgraded to Debian Jessie 8.1 64bit.
* Upgraded PHP to 5.6.11.
