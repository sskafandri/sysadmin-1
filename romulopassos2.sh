#!/bin/bash


###############################################################################
# Copyright 2020							                                                
# Author: Fagner Mendes							                                          
# License: GNU Public License						                                      
# Version: 1.0								                                                  
# Email: fagner.mendes22@gmail.com					                                  
###############################################################################

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

echo ""

rm -f /backup/files/rpassos.romulopassos.com.br/romulopassos/mysql*.gz
BACKUP_DIR"=/backup/files/rpassos.romulopassos.com.br/romulopassos/mysq"
SOURCE="/backup/files/rpassos.romulopassos.com.br/romulopassos/mysq"
tar -cvzpf $BACKUP_DIR/backup.tar.gz $SOURCE
scp -P 1865 /backup/files/rpassos.romulopassos.com.br/romulopassos/mysql/backup.tar.gz root@107.161.180.66:/home/servhost/
ssh -p 1865 -t root@107.161.180.66 'chown servhost:servhost /home/servhost/backup.tar.gz'
