#ADD: copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the container at the path <dest>. 

set -u

single(){
local desc cmd str file
str=$1
file="$dir_root/STEPS/${str}.txt"
test -f $file || { trace "[$file] file not found"; exit 1; }

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
 mute "$cmd" 
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
