apt-get update
apt-get install ruby-dev -y
apt-get install ruby -y
apt-get install build-essential -y
apt-get install git -y
apt-get install postgresql -y
apt-get install postgresql-contrib -y
sudo -u postgres createuser -s $USER
createdb $USER
touch ~/.psql_history
apt-get install libpq-dev -y
gem install pg
gem install json
gem install bundler
gem install sinatra
