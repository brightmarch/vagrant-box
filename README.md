# Bright March Vagrant Box
An Ubuntu 12.04 64-bit box that includes:

* Compass and SASS
* Node 0.10.30
* PHP 5.5.12
* php-redis 2.2.5
* php-zmq 1.1.2
* Postgres 9.3.4
* Redis 2.8.0
* Ruby 2.1.2
* ZeroMQ 4.0.4
* ZURB Foundation 4.3.2

## Packaging
After bringing up the provisioned box, run:

```sh
$ vagrant package --output precise64-<VERSION>.box
```

The `<VERSION>` placeholder should be replace by incrementing the `VERSION` file associated with this repository.

## Changelog

### 1.1.0
* Upgraded Postgres to 9.3.4.
* Fixed path issues when compiling php-zmq.

### 1.0.0
* Initial release of Bright March Vagrant box.
