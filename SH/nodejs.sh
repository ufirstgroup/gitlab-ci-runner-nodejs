
wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
echo '. $HOME/.nvm/nvm.sh' >> $HOME/.bashrc
#cat $HOME/.bashrc /.nvm/nvm.sh
source $HOME/.bashrc
bash -c '. $HOME/.nvm/nvm.sh ; nvm install 0.10'
#bash -c '. /.nvm/nvm.sh ; nvm install 0.11'
bash -c '. $HOME/.nvm/nvm.sh ; nvm alias default 0.10'

