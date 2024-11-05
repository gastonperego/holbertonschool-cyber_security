#!/bin/bash
sudo nmap -sM 	-phttp,https,ftp,ssh,telnet --verbose $1
