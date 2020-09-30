#!/bin/bash

#Install NodeJS Application on CL Server

yum groupinstall alt-nodejs6 alt-nodejs8 alt-nodejs9 --enablerepo=cloudlinux-updates-testing -y
yum install lvemanager lve-utils ea-apache24-mod-alt-passenger --enablerepo=cloudlinux-updates-testing -y
yum install cagefs --enablerepo=cloudlinux-updates-testing -y
yum update lvemanager lve-utils --enablerepo=cloudlinux-updates-testing -y
