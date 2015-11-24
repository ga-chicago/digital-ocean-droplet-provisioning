#!/bin/bash
apt-get update -Y
# updates the list of software our server knows about

apt-get install ruby-dev -Y
# installs the tools we need for a ruby environment

apt-get install build-essential -Y
# essential build tools such as GCC

apt-get install git -Y
# what's going on with git right now?

###--- postgres database!
apt-get install postgresql -Y
apt-get install postgresql-contrib -Y

# create a user
sudo -u postgres createuser -s $USER
createdb $USER
touch ~/.psql_history
apt-get install libpq-dev
gem install pg

###--- gems!
gem install json
gem install bundler
gem install sinatra
