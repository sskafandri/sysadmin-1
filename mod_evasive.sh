#!/bin/bash

echo ""

echo "Checking if the module is installed in this server"

if ! httpd -M | grep evasive24_module > /dev/null; then
   echo -e "Mod Evasive is not installed! Install? (y/n) \c"
   read
   if "$REPLY" = "y"; then
     yum install evasive24_module -y

else

cp /etc/apache2/conf.d/300-mod_evasive.conf /etc/apache2/conf.d/300-mod_evasive.conf-orig
sed -i 's/DOSPageCount 4/DOSPageCount 10/g' /etc/apache2/conf.d/300-mod_evasive.conf
sed -i 's/DOSSiteCount 100/DOSPageCount 150/g' /etc/apache2/conf.d/300-mod_evasive.conf
sed -i 's/DOSPageInterval 1/DOSPageInterval 2/g' /etc/apache2/conf.d/300-mod_evasive.conf
sed -i 's/DOSSiteInterval 2/DOSSiteInterval 3/g' /etc/apache2/conf.d/300-mod_evasive.conf

   fi
fi

