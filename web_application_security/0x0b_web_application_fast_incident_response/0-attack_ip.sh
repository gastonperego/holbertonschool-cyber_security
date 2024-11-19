#!/bin/bash
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' logs.txt | sort | uniq -c | sort -nr | head -1 | awk '{print $2}'

