chmod u+x *.sh . -R
sudo -E su $LOGNAME -c 'echo hello world'
bash -c ./steps.sh
bash -c ./finish.sh
