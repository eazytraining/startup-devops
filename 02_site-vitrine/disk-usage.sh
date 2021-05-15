used_system=`df -h | grep '/dev/xvda1' | awk {'print $5'} | cut -d'%' -f 1`
used_data=`df -h | grep '/dev/xvdaf' | awk {'print $5'} | cut -d'%' -f 1`

if [[ $used_system -gt 80 ]]
  then
    echo "Hello used_system=$used_system" | mail -v  -s  "Wordpress Disk Usage Critic" toto@toto.com
fi

if [[ $used_data -gt 80 ]]
  then
    echo "Hello used_data=$used_data" | mail -v  -s  "Wordpress Data Disk Usage Critic" toto@toto.com
fi