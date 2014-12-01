# When the image is started add the remote server key, install the runner and run it
ssh-keyscan -H $GITLAB_SERVER_FQDN >> /root/.ssh/known_hosts 

