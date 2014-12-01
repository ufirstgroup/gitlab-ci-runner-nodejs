
test -v dir_bashrc
test -v dir_nvm

wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
echo ". $dir_nvm/.nvm/nvm.sh" >> $dir_bashrc/.bashrc
#cat $HOME/.bashrc /.nvm/nvm.sh
source $dir_bashrc/.bashrc
. $dir_nvm/.nvm/nvm.sh
nvm install 0.10
. $dir_nvm/.nvm/nvm.sh
nvm alias default 0.10

