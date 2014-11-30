
wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
echo '. /.nvm/nvm.sh' >> /root/.bashrc
cat $HOME/.bashrc /.nvm/nvm.sh

bash -c '. /.nvm/nvm.sh ; nvm install 0.10'
#bash -c '. /.nvm/nvm.sh ; nvm install 0.11'
bash -c '. /.nvm/nvm.sh ; nvm alias default 0.10'

