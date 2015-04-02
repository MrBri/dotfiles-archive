#!/bin/bash
# This block defines the variables the user of the script needs to input
# when deploying using this script.
#
#
#<UDF name="hostname" label="The hostname for the new Linode.">
# HOSTNAME=
#
#<UDF name="fqdn" label="The new Linode's Fully Qualified Domain Name">
# FQDN=

# This sets the variable $IPADDR to the IP address the new Linode receives.
IPADDR=$(/sbin/ifconfig eth0 | awk '/inet / { print $2 }' | sed 's/addr://')


# This section sets the hostname.
echo $HOSTNAME > /etc/hostname
hostname -F /etc/hostname

# This section sets the Fully Qualified Domain Name (FQDN) in the hosts file.
echo $IPADDR $FQDN $HOSTNAME >> /etc/hosts

# subscribe install and update fish shell
apt-add-repository ppa:fish-shell/release-2 -y
add-apt-repository ppa:keithw/mosh -y
add-apt-repository ppa:git-core/ppa -y

# This updates the packages on the system from the distribution repositories.
apt-get update
apt-get upgrade -y

# in mosh isntall directions
apt-get install python-software-properties -y

apt-get install mosh -y

apt-get install fish -y

# set fish as default shell
chsh -s /usr/bin/fish

# start config file for fish
mkdir -p ~/.config/fish
touch ~/.config/fish/config.fish

apt-get install git -y

apt-get install vim-nox -y

# install Node Version Manager for nvm-fish-wrapper
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm
git checkout `git describe --abbrev=0 --tags`

# install the wrapper
cd ~/.config/fish && git clone git://github.com/passcod/nvm-fish-wrapper.git nvm-wrapper

# edit config.fish to allow nvm wrapper
echo "source ~/.config/fish/nvm-wrapper/nvm.fish" > ~/.config/fish/config.fish

echo "Restart shell (logout and back in) and any version of Node.js or iojs can be installed via nvm, 'nvm ls-remote'"