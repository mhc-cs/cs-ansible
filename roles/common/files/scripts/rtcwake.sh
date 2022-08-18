#!/bin/bash

/usr/sbin/rtcwake -m no -l -t $(date +%s -d 'tomorrow 03:59') ; 

## test
# /usr/sbin/rtcwake -m no -l -t $(date +%s -d 'today 14:55') ; 
