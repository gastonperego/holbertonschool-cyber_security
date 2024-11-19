#!/bin/bash
grep -Eo '(POST|GET) /.' logs.txt | awk '{print $2}' | sort | uniq -c | sort -nr | head -1 | awk '{print $2}'

