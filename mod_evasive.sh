#!/bin/bash

echo ""

echo "Checking if the module is installed in this server"
if result=$(httpd -M | grep evasive24_module); then
    stdout=$result
else
    rc=$?
    stderr=$result

if [ $? -eq 0 ]; then
echo "Mod Evasive is installed"
else
  echo "Mod Evasive is not installed"
fi
  fi

