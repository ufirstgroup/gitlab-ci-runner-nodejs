trap_err(){
  echo $FUNCNAME
  echo $?
  exit 1
}

set -u
trap trap_err ERR

source $ROOT/config.cfg
chmod u+x $ROOT/*.sh . -R
sudo -E su $LOGNAME -c 'echo hello world'
bash -c $ROOT/steps.sh
bash -c $ROOT/finish.sh
