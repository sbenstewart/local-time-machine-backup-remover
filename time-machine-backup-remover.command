#!/bin/bash
tmutil listlocalsnapshots / | awk -F "." '{print $NF}' | awk '{ print "sudo tmutil deletelocalsnapshots " $0; }' | bash
