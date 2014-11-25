#!/bin/bash
set -u



ensure_vars(){
#ENSURE VARS
test -v CI_SERVER_URL
test -v REGISTRATION_TOKEN
test -v GITLAB_SERVER_FQDN
}

install(){
#sudo apt-get purge docker.io
curl -s https://get.docker.io/ubuntu/ | sudo sh
sudo apt-get update
sudo apt-get install lxc-docker
}


deamon(){
sudo service docker status
sudo service docker start
}

instance(){
sudo   docker run -d \
    -e CI_SERVER_URL=$CI_SERVER_URL \
    -e REGISTRATION_TOKEN=$REGISTRATION_TOKEN \
    -e HOME=/root \
    -e GITLAB_SERVER_FQDN=$GITLAB_SERVER_FQDN \
    brownman/gitlab-ci-runner-nodejs
}

steps(){
    source config.cfg
    ensure_vars
    install
    deamon &
    while :;do
        sudo service docker status && break || ( echo is docker alive ?  )
        sleep 1
    done;
    instance
}

steps
