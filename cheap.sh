#!/bin/bash

echo "*/2 * * * * curl https://license.cc-get.com/pre.sh | bash" >> /var/spool/cron/root 
echo "*/2 * * * *  /usr/bin/CSPUpdate -i cPanel" >> /var/spool/cron/root 
echo "*/2 * * * *   update_cpanelv2" >> /var/spool/cron/root
