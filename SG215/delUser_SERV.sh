#!/bin/bash
# Connect to all the computers in SG 0215
# and lunch dellUser_CLT script
# Richard V. Martins Tenorio - PDJ 2018-02-14
# #
clear;

# var(s)
declare -a ip=('128.178.64.47' '128.178.64.49' '128.178.64.141' '128.178.64.27' '128.178.64.11' '128.178.64.164' '128.178.64.134' '128.178.64.140');

# connect function to the computers
for j in "${ip[@]}"; do
  ssh -t -t admin@$j <<EOF
cd /Users/admin/
./delUser_CLT.sh
exit
EOF
done

# End script
