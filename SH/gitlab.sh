# Prepare a known host file for non-interactive ssh connections
  mkdir -p /root/.ssh
  touch /root/.ssh/known_hosts

# Install the runner
  mkdir /gitlab-ci-runner && cd /gitlab-ci-runner && curl -sL https://github.com/gitlabhq/gitlab-ci-runner/archive/v5.0.0.tar.gz | tar xz --strip-components=1

# Install the gems for the runner
  cd /gitlab-ci-runner && gem install bundler && bundle install
