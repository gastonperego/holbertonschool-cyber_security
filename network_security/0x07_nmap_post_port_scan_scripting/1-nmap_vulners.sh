#!/bin/bash
nmap --script vulners -p 80,433 $1
