#!/bin/bash
apt-get update
# updates the list of software our server knows about

apt-get install ruby-dev -y
apt-get install ruby -y
# installs the tools we need for a ruby environment

apt-get install build-essential -y
# essential build tools such as GCC

apt-get install git -y
# what's going on with git right now?

###--- postgres database!
apt-get install postgresql -y
apt-get install postgresql-contrib -y

# create a user
sudo -u postgres createuser -s $USER
createdb $USER
touch ~/.psql_history
apt-get install libpq-dev -y
gem install pg

###--- gems!
gem install json
gem install bundler
gem install sinatra
