#!/usr/bin/env bash

DIR=/var/chef
CONF="$DIR/chef-host.conf"
REPODIR="$DIR/repo"

REPOURL=""
if [ $# -ge 1  ]; then
    REPOURL=$1
    if [ $# -eq 2 ]; then
        NODE=$2
    fi
else 
    echo "[Error] You must specify repository url"
    exit
fi

mkdir -p $DIR
touch $CONF

echo "# chef host configuration." > $CONF
echo "REPOSITORY=\"$REPOURL\"" >> $CONF
if [ $# -eq 2 ]; then
    echo "NODE=\"$NODE\"" >> $CONF
fi

mkdir -p $REPODIR

curl https://raw.github.com/kohkimakimoto/chef-host/master/chef-host > /usr/local/bin/chef-host
chmod 755 /usr/local/bin/chef-host




