#!/bin/bash
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' auth.log | sort | uniq | wc -l
