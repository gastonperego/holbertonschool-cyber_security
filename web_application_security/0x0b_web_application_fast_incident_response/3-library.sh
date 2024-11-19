#!/bin/bash
awk '{print $12}' logs.txt | awk -F'"' '{print $2}' | sort | uniq -c | sort -nr | head -1 | awk '{print $2}'

