FROM sameersbn/ubuntu:14.04.20141026
MAINTAINER sameer@damagehead.com



ADD . /docker
RUN chmod 755 /docker/travis.sh
RUN export dir_root='/docker'
RUN /docker/DKR/sudoers.sh
RUN /docker/travis.sh

#ADD assets/setup/ /app/setup/
#RUN chmod 755 /app/setup/install
#RUN /app/setup/install

#ADD assets/init /app/init
#RUN chmod 755 /app/init

#VOLUME ["/home/gitlab_ci_runner/data"]

#ENTRYPOINT ["/app/init"]
#CMD ["app:start"]
