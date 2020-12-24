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

localedef -i pt_BR -f UTF-8 pt_BR.UTF-8
localectl set-locale LANG=pt_BR.utf8
echo "export LC_CTYPY=pt_BR.utf8" >> .bash_profile
echo "export LC_ALL=pt_BR.utf8" >> .bash_profile
export LC_CTYPY=pt_BR.utf8
export LC_ALL=pt_BR.utf8
locale -a
