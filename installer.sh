#!/usr/bin/env bash

REPODIR=/var/chef

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

mkdir -p $REPODIR

curl https://raw.github.com/kohkimakimoto/chef-host/master/chef-host > /usr/local/bin/chef-host
chmod 755 /usr/local/bin/chef-host

/usr/local/bin/chef-host

echo "Completed Installing. You can run chef-host instead of chef-solo."



