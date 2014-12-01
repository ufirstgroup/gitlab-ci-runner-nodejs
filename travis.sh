trap_err(){
  echo $FUNCNAME
  echo $?
  exit 1
}

set -u
trap trap_err ERR

source $DIR_ROOT/config.cfg
chmod u+x $DIR_ROOT/*.sh . -R
sudo -E su $USER_ADMIN -c 'echo hello world'
bash -c $DIR_ROOT/steps.sh
bash -c $DIR_ROOT/finish.sh
