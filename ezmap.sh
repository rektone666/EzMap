#!/bin/bash

#####################
# EzMAP    0.1      #
#  By 0x42          #
#####################

#  Target  IP
read -p "Target IP: " TARGET

# TCP-Scan Only
nmap -Pn -p- $TARGET --min-rate 10000 -oN tcpscan.txt

# Grab & Filtering  Ports
Ports=$(awk '/^[0-9]+\/tcp/ {print $1}' tcpscan.txt | cut -d'/' -f1 | paste -sd,)

#  NSE SCAN
nmap -Pn -p $Ports -sC -sV $TARGET
