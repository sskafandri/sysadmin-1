#!/bin/ash

for user in `cat /root/emails.txt | cut -d" " -f2 | sort| uniq`; do /usr/local/cpanel/bin/dkim_keys_install $user > /dev/null 2>&1 ; done ; rm -rf /var/spool/exim/input/*
