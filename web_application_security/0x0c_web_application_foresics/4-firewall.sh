#!/bin/bash
grep -E 'iptables.*(INPUT|OUTPUT|FORWARD)' auth.log |  wc -l
