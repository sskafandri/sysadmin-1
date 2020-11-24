#!/bin/sh

STARTIMUNIFY="service imunify360 start"
############### Check httpd ################
SERVICE='imunify360'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "$SERVICE service running, everything is OK"
else
    echo "$SERVICE is not running, restarting $SERVICE"
        checkimunify=`ps ax | grep -v grep | grep -c imunify`
                if [ $checkimunify -le 0 ]
                then
                    	$STARTIMUNIFY
                                if ps ax | grep -v grep | grep $SERVICE > /dev/null
                then
                            echo "$SERVICE service is now restarted, everything is OK"
                                fi
                fi
fi
