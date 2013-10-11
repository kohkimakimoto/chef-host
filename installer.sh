#!/usr/bin/env bash

repodir=/var/chef

repourl=""
if [ $# -ge 1  ]; then
    repourl=$1
else 
    echo "[Error] You must specify repository url"
    exit
fi

curl https://raw.github.com/kohkimakimoto/chef-host/master/chef-host > /usr/local/bin/chef-host
chmod 755 /usr/local/bin/chef-host

echo "Installed chef-host script."

git clone $repourl $repodir

echo "Completed Installing. You can run chef-host instead of chef-solo."



