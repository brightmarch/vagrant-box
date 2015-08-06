# Bright March Vagrant Box
A Debian Jessie 8.10 64-bit box for VirtualBox 5.0 that includes:

* Compass 0.12.4
* Composer
* Go 1.4.2
* Node 0.10.29
* Phing 2.11.0
* PHP 5.6.11
* php-redis 2.2.7
* php-ssh2 0.12
* php-zmq 1.1.2
* Postgres 9.4.4
* Redis 3.0.2
* Ruby 2.1.5
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

```
vagrant package --output precise64-`cat VERSION`.box
```

The `<VERSION>` placeholder should be replace by incrementing the `VERSION` file associated with this repository.

**Note**: The `vagrant-vbguest` plugin is very out of date and I dislike it. As such, you should manually install [VirtualBox Guest Additions 5.0](http://download.virtualbox.org/virtualbox/5.0.0/VBoxGuestAdditions_5.0.0.iso) to match VirtualBox 5.0.

To manually install the Guest Additions, run the following commands as `root` after shelling into the box.

* Install the Linux kernel header files necessary: `apt-get install linux-headers-`uname -r` -y`

```
apt-get install linux-headers-`uname -r` -y

wget http://download.virtualbox.org/virtualbox/5.0.0/VBoxGuestAdditions_5.0.0.iso
mkdir -p /mnt/cdrom
mount -o loop VBoxGuestAdditions_5.0.0.iso /mnt/cdrom
cd /mnt/cdrom
./VBoxLinuxAdditions.run
```

## Changelog

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
