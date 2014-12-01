#we want gitlab_ci_runner user to be of group: mongodb
#http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/


sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

sudo apt-get update
sudo apt-get install -y mongodb-org
#install v2.6.1: sudo apt-get install -y mongodb-org=2.6.1 mongodb-org-server=2.6.1 mongodb-org-shell=2.6.1 mongodb-org-mongos=2.6.1 mongodb-org-tools=2.6.1
#pin selection: echo "mongodb-org hold" | sudo dpkg --set-selections



sudo service mongod start

#apt-get install git python build-essential wget screen tmux curl vim mongodb-org -y

sudo mkdir $dir_data
sudo mkdir $dir_data/db
