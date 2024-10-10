#!/bin/bash
groupadd "$1"
chgrp "$!" "$2"
chmod +xr "$2"
