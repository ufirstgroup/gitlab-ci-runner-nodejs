
wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
echo '. $dir_nvm/.nvm/nvm.sh' >> $dir_bashrc/.bashrc
#cat $HOME/.bashrc /.nvm/nvm.sh
source $dir_nvm/.bashrc
bash -c '. $dir_nvm/.nvm/nvm.sh ; nvm install 0.10'
#bash -c '. /.nvm/nvm.sh ; nvm install 0.11'
bash -c '. $dir_nvm/.nvm/nvm.sh ; nvm alias default 0.10'

