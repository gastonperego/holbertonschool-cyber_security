#!/bin/bash
find / -xdev -type d -perm -o=w -print -exec chmod -w {} \;
