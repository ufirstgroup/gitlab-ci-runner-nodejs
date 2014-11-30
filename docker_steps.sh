#ADD: copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the container at the path <dest>. 

 

#update permission for our scripts
  chmod +x ./SH/*.sh
##################################

  #enable sudo command
  ./SH/sudoers.sh


  #install node through nvm
  ./SH/nodejs.sh

  #try installing mongodb using external file
  ./SH/mongodb.sh

  #try installing meanio dependencies
  ./SH/meanio.sh
