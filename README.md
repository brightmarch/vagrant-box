# Bright March Vagrant Box
A Debian Jessie 8.3 64-bit box for VirtualBox 5.0 that includes:

* Go 1.6
* Node 4.3.2
* npm 2.14.12
* Phing 2.13.0
* PHP 7.0.4
* PHP Composer alpha1
* php-redis php7
* Postgres 9.5.1
* Redis 3.0.7
* Ruby 2.1.5

## Boxes
You are free to use our boxes if you like. They are hosted using Hashicorp's Atlas service.

* [brightmarch/debian-8.3-amd64](https://atlas.hashicorp.com/brightmarch/boxes/debian-8.3-amd64)
* [brightmarch/debian-8.1-amd64](https://atlas.hashicorp.com/brightmarch/boxes/debian-8.1-amd64)

## Requirements
Ansible must be in your `$PATH` in order for Vagrant to provision the box. See the [Ansible documentation](http://docs.ansible.com/intro_installation.html) for instructions on how to install Ansible.

## Building and Packaging
After bringing up the provisioned box, run:

```sh
vagrant package --output debian-8.3-amd64-`cat VERSION`.box
```

The `<VERSION>` placeholder should be replaced by incrementing the `VERSION` file associated with this repository.

**Note**: The `vagrant-vbguest` plugin is very out of date and I dislike it. As such, you should manually install [VirtualBox Guest Additions 5.0.16](http://download.virtualbox.org/virtualbox/5.0.16/VBoxGuestAdditions_5.0.16.iso) to match VirtualBox 5.0.16.

Manually installing the Guest Additions is easy. Begin by shelling into the newly built Vagrant VM. Switch to the `root` user using `sudo`. From there, use the commands below to install the Guest Additions ISO.

```sh
apt-get install linux-headers-`uname -r` -y

wget http://download.virtualbox.org/virtualbox/5.0.16/VBoxGuestAdditions_5.0.16.iso
mkdir -p /mnt/cdrom
mount -o loop VBoxGuestAdditions_5.0.16.iso /mnt/cdrom

cd /mnt/cdrom
sh VBoxLinuxAdditions.run
```

After the Guest Additions are installed, you can unmount the ISO and delete the file.

## Changelog

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
