#!/bin/bash
# copy my ssh key to the computers in SG0215
# Richard V. Martins Tenorio - PDJ 2018-02-14
# #
clear;

# You must have already created your ssh key if you want this to work, if not try :
# ssh-keygen

# var(s)
declare -a ip=('128.178.64.47' '128.178.64.49' '128.178.64.141' '128.178.64.27' '128.178.64.11' '128.178.64.164' '128.178.64.134' '128.178.64.140');

for j in "${ip[@]}"; do
  # copy the key(s)
  ssh-copy-id -i ~/.ssh/id_rsa.pub admin@$j
done

# End script
