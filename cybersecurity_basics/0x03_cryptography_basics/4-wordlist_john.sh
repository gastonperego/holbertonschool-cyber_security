#!/bin/bash
john --format=raw-md5 --wordlist=rockyou.txt --fork "$1"
