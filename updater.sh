#!/bin/bash

# This is just a script for convenience, it has nothing to do with the actual NGINX config

# Even though just doing "nginx -s reload" wouldn't break anything if the config is invalid
# this makes it easier at a glance to tell if it worked on top of all the other output from git

# Set color vars
GREEN='\033[0;32m'
RED='\033[0;31m'
CLEAR='\033[0m'

# Undo any changes for testing that may have been made
/usr/bin/git reset --hard HEAD

# Update repo
/usr/bin/git pull

# Test if NGINX config test passes
if /usr/bin/nginx -t; then
    echo -e "${GREEN}NGINX config test passed, reloading config${CLEAR}"
    nginx -s reload
else
    echo "${RED}NGINX config test failed!${CLEAR}"
fi
