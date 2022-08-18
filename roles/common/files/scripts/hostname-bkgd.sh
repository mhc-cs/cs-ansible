#!/bin/bash

ORIG=/usr/share/backgrounds/default.png ; 
TMP=/usr/share/backgrounds/tmp.png ;
BKGD=/usr/share/backgrounds/warty-final-ubuntu.png
SNUM=$(/usr/sbin/dmidecode -s chassis-serial-number) ;
INV=/scripts/hostnames.txt
MYINFO=$(grep "$SNUM" "$INV") ;
ASSET=$(grep "$SNUM" "$INV" | cut -d ',' -f 2  ) ;
HOSTNAME=$(grep "$SNUM" "$INV" | cut -d ',' -f 3 )  ;

echo "$HOSTNAME" > /etc/hostname ;
touch /etc/MHC-assetID-"$ASSET" ;

/bin/cp "$ORIG" "$TMP" ;
/usr/bin/convert "$TMP" -font Helvetica-Narrow -fill \#FFFFFF75 -gravity North -pointsize 250  -annotate +0+250 "$HOSTNAME" "$BKGD" ;
gsettings set org.gnome.desktop.background picture-uri file://"$BKGD" ;


