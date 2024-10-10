#!/bin/bash
addgroup "$1"
chgrp "$!" "$2"
chmod +xr "$2"
