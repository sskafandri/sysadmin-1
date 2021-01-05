#!/bin/bash

echo ""

echo "Checking if the module is installed in this server"
if result=$(rpm -qa | grep mod_evasive); then
    stdout=$result
else
    rc=$?
    stderr=$result

if [ $? -eq 0 ]; then
cp /etc/apache2/conf.d/300-mod_evasive.conf /etc/apache2/conf.d/300-mod_evasive.conf-orig
sed -i 's/DOSPageCount 4/DOSPageCount 10/g' /etc/apache2/conf.d/300-mod_evasive.conf
sed -i 's/DOSSiteCount 100/DOSPageCount 150/g' /etc/apache2/conf.d/300-mod_evasive.conf
sed -i 's/DOSPageInterval 1/DOSPageInterval 2/g' /etc/apache2/conf.d/300-mod_evasive.conf
sed -i 's/DOSSiteInterval 2/DOSSiteInterval 3/g' /etc/apache2/conf.d/300-mod_evasive.conf
systemctl restart httpd
echo "Done"
else
  echo "Mod Evasive is not installed"
fi
  fi

