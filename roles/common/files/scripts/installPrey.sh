#!/bin/bash

FILE="/pkgs/prey_1.8.1_amd64.deb"

if [ -f "$FILE" ]; then
   /usr/bin/dpkg -i "$FILE" ; 
   /usr/bin/apt-get install -f -y ;
   /usr/lib/prey/current/bin/prey config account authorize -a 21464d433c47 ;
fi
