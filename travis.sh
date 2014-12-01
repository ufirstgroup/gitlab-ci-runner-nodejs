#!/usr/bin/env bash


set -u
export MODE_DEBUG=${MODE_DEBUG:-true}
export dir_root=${dir_root:-"$PWD"}



set_env(){
if [ $MODE_DEBUG = true ];then
  trap trap_err ERR
fi
}

trap_err(){
  echo $FUNCNAME
  echo $?
  cat1 /tmp/out
  cat1 /tmp/err
  exit 1
}
intro(){
echo "[dir_root] $dir_root"
echo ----
ls $dir_root
echo ----
}

run(){
set_env
intro

#{dir_root:-$PWD}

#LOAD
source $dir_root/CFG/helper.cfg
source $dir_root/CFG/config.cfg

#FIX PERMISSION
chmod u+x *.sh $dir_root -R

#RUN
sudo -E su $LOGNAME -c 'echo hello world'
bash -c $dir_root/steps.sh
}


run
