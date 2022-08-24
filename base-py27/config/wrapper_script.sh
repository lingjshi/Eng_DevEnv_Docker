#!/bin/bash

# turn on bash's job control
set -m

# Cleanup env variables 
for i in $(set | grep "_SERVICE_\|_PORT" | cut -f1 -d=); do unset $i; done

# Start the primary process and put it in the background
FILEBROWSER_CONFIG_DIR=/usr/local/bin/  /usr/local/bin/filebrowser serve &

# Start ttyd
#ttyd  -p 9090  /bin/bash
# custom index.html is hanging  once we figure it out we can remove it
ttyd  -p 9090  -I /usr/bin/index.html /bin/bash
