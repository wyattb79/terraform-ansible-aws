#! /bin/bash

yum update -y
yum install ansible -y
useradd ansible -u 5000
