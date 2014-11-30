
# gitlab-ci-runner-nodejs ¯\_(ツ)_/¯

FROM ubuntu:12.04.5
MAINTAINER  Ofer Brown "brownman2556@gmail.com"

# Based on https://github.com/gitlabhq/gitlab-ci-runner/blob/master/Dockerfile
# by Sytse Sijbrandij <sytse@gitlab.com>

# This script will start a runner in a docker container.
#
# First build the container and give a name to the resulting image:
# docker build -t codingforce/gitlab-ci-runner-nodejs github.com/bkw/gitlab-ci-runner-nodejs
#
# Then set the environment variables and run the gitlab-ci-runner in the container:
# docker run -e CI_SERVER_URL=https://ci.example.com -e REGISTRATION_TOKEN=replaceme -e HOME=/root -e GITLAB_SERVER_FQDN=gitlab.example.com codingforce/gitlab-ci-runner-nodejs
#
# After you start the runner you can send it to the background with ctrl-z
# The new runner should show up in the GitLab CI interface on /runners
#
# You can start an interactive session to test new commands with:
# docker run -e CI_SERVER_URL=https://ci.example.com -e REGISTRATION_TOKEN=replaceme -e HOME=/root -i -t codingforce/gitlab-ci-runner-nodejs:latest /bin/bash
#
# If you ever want to freshly rebuild the runner please use:
# docker build -no-cache -t codingforce/gitlab-ci-runner-nodejs github.com/bkw/gitlab-ci-runner-nodejs

#The ENV instruction sets the environment variable <key> to the value <value>. This value will be passed to all future RUN instructions. This is functionally equivalent to prefixing the command with <key>=<value>
ENV HOME /home
#Old: Set the HOME directory to /root










# Fix upstart under a virtual host https://github.com/dotcloud/docker/issues/1024
# RUN dpkg-divert --local --rename --add /sbin/initctl
# RUN ln -nfs /bin/true /sbin/initctl


# delete me! - test only
#RUN echo "cowsay $(fortune)" >> $HOME/.bashrc




# Install some usefull gems for web development
#RUN gem install compass sass

# Download nodejs and compile it
# RUN mkdir /tmp/node && cd /tmp/node && curl -s http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
# RUN cd /tmp/node  && ./configure && make && make install
# RUN rm -rf /tmp/node

#ADD: copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the container at the path <dest>. 
ADD . /docker


#update permission for our scripts
RUN chmod +x /docker/SH/*.sh
##################################

  #enable sudo command
RUN /docker/SH/sudoers.sh


  #try installing meanio dependencies
RUN /docker/SH/steps.sh


# When the image is started add the remote server key, install the runner and run it
#WORKDIR /gitlab-ci-runner
#CMD ["/bin/bash","-i","-l","-c","ssh-keyscan -H $GITLAB_SERVER_FQDN >> /root/.ssh/known_hosts & bundle exec ./bin/setup_and_run"]
