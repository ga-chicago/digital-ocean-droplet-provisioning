# dropletconfig
Droplet Config


## Simple Config Script for Droplets!


```bash
#!/bin/bash
colour='\033[1;35m'
NC='\033[0m' # No Color
echo -e "${colour}*** Droplet Provisioning Script"
echo -e "Starting to provision your droplet!"

apt-get -y update
apt-get -y install ruby-dev

echo -e ""
echo -e "*** Ruby & Development tools are installed!"
echo -e ""

apt-get -y install build-essential

echo -e ""
echo -e "*** GCC Build tools are installed!"
echo -e ""

apt-get -y install git

echo -e ""
echo -e "*** Git is installed!"
echo -e ""
echo -e ""
echo -e "|-o-| <-o-> |-o-|"
echo -e "The force is strong with this one!"

gem install json -v 1.8.2

echo -e ""
echo -e "*** JSON Gem is installed!"
echo -e ""

apt-get -y install postgresql
apt-get -y install postgresql-contrib

echo -e ""
echo -e "*** Postgres and dependancies are installed!"
echo -e ""

sudo -u postgres createuser -s $USER
createdb $USER
touch ~/.psql_history
apt-get -y install libpq-dev
gem install pg

echo -e ""
echo -e "*** Postgres user and database created!"
echo -e ""

apt-get -y install nginx

echo -e ""
echo -e "*** Nginx is installed!"
echo -e ""

gem install unicorn
rm -v /etc/nginx/sites-available/default

echo -e ""
echo -e "*** Unicorn is installed!"
echo -e ""

mkdir /var/www
mkdir /var/www/app
cd /var/www/app
mkdir logs pids
touch unicorn.rb

gem install bundler

echo -e ""
echo -e "*** Your app directory is created!"
echo -e ""

echo -e ""
echo -e "*** Script has finished running!"
echo -e "*** Next steps:"
echo -e "*** 1. You will need to create an nginx config file in /etc/nginx/conf.d/default.conf"
echo -e "*** 2. You will need to edit add a Unicorn configuration file in /var/www/app"
echo -e "*** 3. We have created a default application directory in /var/www/app for you. You may change this if you want!"
echo -e "*** That's all, folks!"
echo -e ""
echo -e "${NC}"

```
