#!/bin/bash

sed -i 's/nameserver 64.31.5.1/#nameserver 64.31.5.1/g' /etc/resolv.conf
sed -i 's/nameserver 64.31.5.2/#nameserver 64.31.5.2/g' /etc/resolv.conf
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf
