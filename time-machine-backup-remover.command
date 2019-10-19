#!/bin/bash
os_name=$(sw_vers -productVersion | awk -F "." '{print $NF}')
if [ '15' = "$os_name" ]; then
    backup_file='$4'
else
    backup_file='$NF'
fi
tmutil listlocalsnapshots / | awk -v del="$backup_file" -F "." '{print del}' | awk '{ print "sudo tmutil deletelocalsnapshots " $0; }' | bash