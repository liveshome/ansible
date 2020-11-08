#!/bin/bash
ansible x -m copy -a 'src=/root/x dest=/opt'
ansible x -m shell -a 'chmod u+x /opt/x/*'
ansible x -m shell -a 'sh /opt/x/pt.sh &>/dev/null'
