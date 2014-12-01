trap_err(){
  echo $FUNCNAME
  echo $?
  exit 1
}

set -u
trap trap_err ERR
export dir_root=$PWD
#{dir_root:-$PWD}

#LOAD
source $dir_root/CFG/helper.cfg
source $dir_root/CFG/config.cfg


chmod u+x $dir_root/*.sh . -R

#RUN
sudo -E su $USER_ADMIN -c 'echo hello world'
bash -c $dir_root/steps.sh
bash -c $dir_root/finish.sh
