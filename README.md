[![Build Status](https://travis-ci.org/brownman/gitlab-ci-runner-nodejs.svg?branch=master)](https://travis-ci.org/brownman/gitlab-ci-runner-nodejs)
[![Circle CI](https://circleci.com/gh/brownman/gitlab-ci-runner-nodejs.svg?style=svg)](https://circleci.com/gh/brownman/gitlab-ci-runner-nodejs)


structure
====
 
 ```bash
 CFG/    #assign directory names and use permissions
 MEAN/   #install mean using npm + scaffold new dir + [[[  DO WHATEVER WE NEED TO TEST OUR PACKAGE-REPOSITORY]]]
 SH/     #install ubuntu machine packages + ruby + nodejs
 DKR/    #docker only:  Exposing ports 
 GITLAB/ #c.i runner:   Clone the repo + Use ruby to run it
 ```


gitlab-ci-runner-nodejs
=======================

Runner for gitlab-ci **using docker** with a fresh node.js, npm and phantom.js install


links
----
- [travis + docker](https://github.com/lukecyca/travis-docker-example)
- [docker Makefile](https://github.com/sameersbn/docker-gitlab-ci/edit/master/Makefile)
- [rm code from Dockerfile](https://github.com/sameersbn/docker-gitlab-ci-runner)
