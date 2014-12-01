#!/usr/bin/env bash


set -u
STEPPER=${STEPPER:-mute}

single(){
local desc cmd str file
str=$1
file="$dir_root/TXT/${str}.txt"
test -f $file || { trace "[$file] file not found"; exit 1; }

print_line
cat1  $file 
print_line

while read line0;do
 test -n "$line0" || breaking
 line=$( echo $line0 | cut -d'#' -f1 )
 details=$( echo $line0 | cut -d'#' -f2 )
 desc=$(  echo $line | cut -d':' -f1 )
 cmd=$(  echo $line | cut -d':' -f2- )
 
 echo "[$desc] $details"
 set +e
 ${STEPPER} "$cmd" 
done < <( cat $file )
}

all(){
local str
while read line;do
  commander single "$line" 
done < <(cat $dir_root/steps.txt)
}



all
exit 0
