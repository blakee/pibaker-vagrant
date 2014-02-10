#!/bin/bash

apt-get -y install kpartx git apt-cacher-ng qemu-kvm-extras-static binfmt-support debootstrap dosfstools
cd /home/vagrant
rm -rf pibaker
git clone https://github.com/blakee/pibaker.git pibaker
cd pibaker
./buildpi.sh
mkdir -p /vagrant/out
mv /home/vagrant/pibaker/img/* /vagrant/out

echo "image generated, check 'out' directory"
