#ADD: copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the container at the path <dest>. 


trace(){
 echo 1>&2 "[.] $@"
}

 print_line(){
  echo 1>&2 '---------------------------------'
 }
 
 commander(){
 local args=( $@ ) 
 local cmd="${args[@]}"
 print_line
 echo ">>>> $cmd"
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


single(){
local desc cmd str file
str=$1
file="$DIR_FIRST/STEPS/${str}.txt"
test -f $file || { echo no file; exit 1; }

print_line
cat -n $file 
print_line

while read line0;do
 test -n "$line0" || breaking
 line=$( echo $line0 | cut -d'#' -f1 )
 details=$( echo $line0 | cut -d'#' -f2 )
 desc=$(  echo $line | cut -d':' -f1 )
 cmd=$(  echo $line | cut -d':' -f2- )
 
 echo "[$desc] $details"
 set +e
 commander "$cmd" 
done < <( cat $file )
}

all(){
local str
while read line;do
 str=$( echo $line  | tr  '[a-z]'   '[A-Z]' )
 commander single "$str" 
done < <(cat $dir_root/steps.txt)
}



all
exit 0
