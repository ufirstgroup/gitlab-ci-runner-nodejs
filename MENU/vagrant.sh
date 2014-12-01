#install
  sudo echo "deb http://download.virtualbox.org/virtualbox/debian precise contrib" | sudo tee -a /etc/apt/sources.list
  wget http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
  sudo apt-get update
  sudo apt-get -y install linux-headers-$(uname -r)
  sudo apt-get -y install virtualbox-4.2
  VBoxManage -v
  wget http://files.vagrantup.com/packages/be0bc66efc0c5919e92d8b79e973d9911f2a511f/vagrant_1.0.5_i686.deb
  sudo dpkg -i vagrant_1.0.5_i686.deb
#script:
  /opt/vagrant/bin/vagrant up
  ls
  /opt/vagrant/bin/vagrant ssh --command "touch /vagrant/smash_it_with_a_hammer"
  ls
