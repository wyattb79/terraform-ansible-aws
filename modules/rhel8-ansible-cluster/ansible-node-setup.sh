#! /bin/bash

yum update -y
yum install ansible -y
useradd ansible -u 5000
echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
