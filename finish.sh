#apt-get install tree
#tree  -d
#grunt


cd /tmp/myApp
grunt &
while true; do  curl 0.0.0.0:3000 | grep FullStack  2>/dev/null && break ; sleep 1 ; done


#mean search gmap
