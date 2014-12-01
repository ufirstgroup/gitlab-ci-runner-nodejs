trap_err(){
  echo $FUNCNAME
  echo $?
  exit 1
}

set -u
trap trap_err ERR
dir_root=${dir_root:-$HOME}
source $dir_root/CFG/config.cfg
chmod u+x $dir_root/*.sh . -R
sudo -E su $USER_ADMIN -c 'echo hello world'
bash -c $dir_root/steps.sh
bash -c $dir_root/finish.sh
