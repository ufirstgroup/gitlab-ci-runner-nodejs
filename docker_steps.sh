#ADD: copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the container at the path <dest>. 

 step(){
 local args=( $@ ) 
 local cmd="${args[@]}"
 echo "[CMD] $cmd"
 eval "$cmd" 1>/tmp/out 2>/tmp/err || { exit 1; }
 }

#update permission for our scripts
 step permissions chmod +x ./SH/*.sh
##################################

  #enable sudo command
 step sudoers ./SH/sudoers.sh


  #install node through nvm
 step nodejs ./SH/nodejs.sh

  #try installing mongodb using external file
 step mongodb ./SH/mongodb.sh

  #try installing meanio dependencies
 step mean-framework ./SH/meanio.sh


 step mean-packabe ./SH/mean_add_package.sh
 
 
