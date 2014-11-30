set -e
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list

apt-get update && apt-get upgrade -y
apt-get install git python build-essential wget screen tmux curl vim mongodb-org -y
service mongod start

mkdir /data
mkdir /data/db
