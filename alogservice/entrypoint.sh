#!/bin/sh -l

# logging
pwd
ls -l

# setup rpm environment

yum install -y rpmdevtools

rpmdev-setuptree

ls -l ~/rpmbuild

# set up systemctl clone to run in the container
# wget https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl.py -O /usr/local/bin/systemctl
yum install -y wget
wget https://github.com/gdraheim/docker-systemctl-replacement/archive/v1.5.4260.tar.gz
tar -xf v1.5.4260.tar.gz

cp docker-systemctl-replacement-1.5.4260/files/docker/systemctl.py /usr/bin/systemctl

# build the source tarball and target the SOURCES directory

cd alogservice/logservice/SOURCES
tar -cvhf ~/rpmbuild/SOURCES/logservice-1.0.tar.bz2 logservice-1.0

cd /github/workspace
pwd

# build the RPM

rpmbuild -bb alogservice/logservice/SPECS/logservice.spec

ls -l ~/rpmbuild/RPMS/noarch

# install the RPM

yum install -y ~/rpmbuild/RPMS/noarch/logservice-1.0-1.noarch.rpm

# check the install files
ls -l /opt/logservice
ls -l /etc/systemd/system/logservice.service

# start the service

echo 'systemctl start logservice'
systemctl start logservice
systemctl status logservice

# let it write some logs
sleep 9

# prove to me that the logs exist
cat /var/log/logservice.log
