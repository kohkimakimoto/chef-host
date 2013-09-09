# chef-host

You can use chef-solo more easily.

**chef-host** downloads chef repository form git repository.
And runs chef-solo using **nodes/%hostname%.json** 

# Installation

    $ curl https://raw.github.com/kohkimakimoto/chef-host/master/installer.sh | sudo bash -s git@github.com:your/chef-repository.git

# Usage

Just run the below command 

    $ chef-host
