#!/usr/bin/env bash

DIR=~/.chef-host
CONF="$DIR/chef-host.conf"
REPODIR="$DIR/repo"

REPOURL=""
if [ $# -eq 1  ]; then
    REPOURL=$1
else 
    echo "[Error] You must specify repository url"
    exit
fi

mkdir -p $DIR
touch $CONF

echo "# chef host configuration." > $CONF
echo "REPOSITORY=\"$REPOURL\"" >> $CONF

mkdir -p $REPODIR

curl https://raw.github.com/kohkimakimoto/chef-host/master/chef-host > /usr/local/bin/chef-host
chmod 755 /usr/local/bin/chef-host




