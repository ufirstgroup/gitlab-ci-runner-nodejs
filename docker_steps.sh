#ADD: copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the container at the path <dest>. 
mkdir /docker
mv SH /docker


#update permission for our scripts
  chmod +x /docker/SH/*.sh
##################################

  #enable sudo command
  /docker/SH/sudoers.sh


  #install node through nvm
  /docker/SH/nodejs.sh

  #try installing mongodb using external file
  /docker/SH/mongodb.sh

  #try installing meanio dependencies
  /docker/SH/meanio.sh
