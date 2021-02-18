#!/bin/bash
killall iTunes
killall iTunesHelper
 set -e
 clear
 cd ~/Documents/RestoreM8-2.0
 echo "RestoreM8-2.0 By 80036nd"
 FILE=restore.ipsw
 if [ -f "$FILE" ]; then
 echo "The $FILE file exists. Continuing..."
 else
 echo "The $FILE file does not exist on the ~/Documents/RestoreM8-2.0 folder! Cannot continue."
 echo "Terminal Closing in 10 seconds"
sleep 10 
killall Terminal
 exit
 fi

 FILE=blob.shsh2
 if [ -f "$FILE" ]; then
 echo "The $FILE file exists. Continuing..."
 else
 echo "The $FILE file does not exist on the ~/Documents/RestoreM8-2.0 folder! Cannot continue."
 echo "Terminal Closing in 10 seconds"
sleep 10 
killall Terminal
 exit
 fi

 FILE=futurerestore189
 if [ -f "$FILE" ]; then
 echo "The $FILE file exists. Continuing..."
 else
 echo "The $FILE file does not exist on the ~/Documents/RestoreM8-2.0 folder! Cannot continue. Please re-download the code from the app!"
 exit
 fi
 echo "Now transfering the control to FutureRestore! Please monitor the Terminal!"
 echo "Please wait for FutureRestore to complete."
 echo "*********************************************************"
 printf "\n"
 echo "Welcome to FutureRestore!"
 chmod 777 futurerestore189
 ./futurerestore189 -t blob.shsh2 --latest-sep --latest-baseband restore.ipsw
 clear
 echo "Your Device Should be Restored"
 echo "RestoreM8-2.0 By 80036nd"
 echo "Futurerestore 14 by tihmstar and marijuanARM"
 echo "Legacy patches by GeoSn0w"
 echo "Terminal Closing in 10 seconds"
sleep 10 
killall Terminal
