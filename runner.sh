#!/bin/sh

# Replace the hostname in the container
sed -i.bak 's/HOSTNAME/'"$HOSTNAME"'/g' /www/data/index.html
sed -i.bak 's/HOSTNAME/'"$HOSTNAME"'/g' /www/data/app1/index.html
sed -i.bak 's/HOSTNAME/'"$HOSTNAME"'/g' /www/data/app2/index.html

# Startup the cmd
exec "$@"
