#!/bin/sh
set -e
set -x
sudo apt-get install -qqy git qemu-kvm-spice
git clone https://github.com/openstack-dev/devstack.git
cd devstack
sudo cp /vagrant/local.conf .
./stack.sh
