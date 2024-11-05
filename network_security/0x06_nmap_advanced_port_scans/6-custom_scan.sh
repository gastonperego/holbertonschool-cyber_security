#!/bin/bash
sudo nmap --scan-flags URGACKPSHRSTSYNFIN -p$2 -oN custom_scan.txt $1 > /dev/null 2> /dev/null
