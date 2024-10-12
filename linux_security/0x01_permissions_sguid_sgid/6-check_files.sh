#!/bin/bash
find "$1" -perm /-u=s,-g=s -mtime -1 -exec ls -l {} \;
