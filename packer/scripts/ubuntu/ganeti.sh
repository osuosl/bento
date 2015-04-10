#!/bin/bash -eux

# Install growpart
apt-get -y install cloud-guest-utils

# Install denyhosts from our local repo
#yum -y install http://packages.osuosl.org/repositories/centos-7/osl/x86_64/denyhosts-2.6-19.el7.centos.noarch.rpm
#chkconfig denyhosts on
#sed -i -e 's/^PURGE_DENY.*/PURGE_DENY = 5d/' /etc/denyhosts.conf

# No timeout for grub menu
sed -i -e 's/^GRUB_TIMEOUT.*/GRUB_TIMEOUT=0/' /etc/default/grub
# Write out the config
update-grub