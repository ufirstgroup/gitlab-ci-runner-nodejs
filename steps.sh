#ADD: copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the container at the path <dest>. 
 print_line(){
  echo 1>&2 '---------------------------------'
 }
 
 commander(){
 local args=( $@ ) 
 local cmd="${args[@]}"
 print_line
 echo "[CMD] $cmd"
 eval "$cmd" 1>/tmp/out 2>/tmp/err || { print_line; cat /tmp/out; print_line; cat /tmp/err; exit 1; }
 echo
 }
 
breaking(){
 echo 
 echo Empty line!
 echo
 echo breaking..
 break
}

run(){
local desc cmd
 
while read line0;do
 test -n "$line0" || breaking
 line=$( echo $line0 | cut -d'#' -f1 )
 details=$( echo $line0 | cut -d'#' -f2 )
 desc=$(  echo $line | cut -d':' -f1 )
 cmd=$(  echo $line | cut -d':' -f2- )
 
 echo "[$desc] $details"
 set +e
 commander "$cmd" 
done < <(cat steps.txt)
}

run
exit 0
