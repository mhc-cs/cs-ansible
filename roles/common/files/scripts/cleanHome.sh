#!/bin/bash

MYDATE=$(date '+%Y.%m.%d_%k.%M.%S') ; 
MYHOME=/home/csguest ;
DEST=/archive/csguest-"$MYDATE" ;
SKEL=/etc/skel/. ;

mkdir -p "$DEST"
mv "$MYHOME" "$DEST" && mkdir -p "$MYHOME" && cp -r "$SKEL" "$MYHOME" ;
chown -R csguest:csadmin "$MYHOME" ;
chmod -R ug+rwx "$MYHOME" ;
chmod -R o-rwx "$MYHOME"  ; 

# maximum number of days to retain archived csguest homes
ageLimit=30

# archive cleaner
find /archive/* -type d -mtime +"$ageLimit" -exec rm {} \;

