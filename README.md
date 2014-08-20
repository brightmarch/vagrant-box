# Bright March Vagrant Box
An Ubuntu 12.04 64-bit box that includes:

* Compass 0.12.4
* God 0.13.4
* Node 0.10.30
* PHP 5.5.12
* php-redis 2.2.5
* php-zmq 1.1.2
* Postgres 9.3.4
* Redis 2.8.0
* Ruby 2.1.2
* SASS 3.3.4
* ZeroMQ 4.0.4
* ZURB Foundation 4.3.2

## Boxes
You are free to use our boxes if you like. Below are the direct links to the .box files stored on Amazon AWS.

* [2014-08-19] [precise64-1.1.0.box](https://s3.amazonaws.com/brightmarch.build/boxes/precise64-1.1.0.box)
* [2014-08-10] [precise64-1.0.0.box](https://s3.amazonaws.com/brightmarch.build/boxes/precise64-1.0.0.box)

## Packaging
After bringing up the provisioned box, run:

```sh
$ vagrant package --output precise64-<VERSION>.box
```

The `<VERSION>` placeholder should be replace by incrementing the `VERSION` file associated with this repository.

## Changelog

### 1.1.0
* Upgraded Postgres to 9.3.4.
* Locked down versions of Compass, God, and SASS.
* Fixed path issues when compiling php-zmq.
* Set PHP `memory_limit` value to `512MB`.
* Set PHP `upload_max_filesize` value to `32MB`.

### 1.0.0
* Initial release of Bright March Vagrant box.
