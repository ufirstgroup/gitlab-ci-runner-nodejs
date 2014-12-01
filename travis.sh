trap_err(){
  echo $FUNCNAME
  echo $?
  exit 1
}
intro(){
echo "[dir_root] $dir_root"
echo ----
ls $dir_root
echo ----
}

set -u
#trap trap_err ERR
export dir_root="$PWD"
intro

#{dir_root:-$PWD}

#LOAD
source $dir_root/CFG/helper.cfg
source $dir_root/CFG/config.cfg

#FIX PERMISSION
chmod u+x *.sh $dir_root/ -R

#RUN
sudo -E su $LOGNAME -c 'echo hello world'
bash -c $dir_root/steps.sh
