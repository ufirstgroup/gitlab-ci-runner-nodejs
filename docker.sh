#https://github.com/bkw/gitlab-ci-runner-nodejs


DIR_HOME=/root
docker pull brownman/gitlab-ci-runner-nodejs

docker run -d \
    -e CI_SERVER_URL=$CI_SERVER_URL \
    -e REGISTRATION_TOKEN=$REGISTRATION_TOKEN \
    -e HOME=$DIR_HOME \
    -e GITLAB_SERVER_FQDN=$GITLAB_SERVER_FQDN \
    brownman/gitlab-ci-runner-nodejs
    
