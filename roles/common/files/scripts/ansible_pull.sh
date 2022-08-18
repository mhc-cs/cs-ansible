#!/bin/bash

/usr/bin/ansible-pull --accept-host-key -i localhost -U git@gitlab.mtholyoke.edu:computer-science/cs-ansible.git ;
MYDATE=$(/bin/date '+%Y-%m-%d %k:%M:%S') ; 
/bin/echo "Completed: " "$MYDATE" >> /var/log/ansible-pull.log ;
