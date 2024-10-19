#!/bin/bash
find /usr/bin -perm -u=s -exec ls -l {} \; 2>/dev/null
