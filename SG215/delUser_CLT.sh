#!/bin/bash
# if line 12 - 13 uncommented, delete all user that
# is more old then 7 days exept the users in the if
# Richard V. Martins Tenorio - PDJ 2018-02-14
# #
clear;

# var(s)
users=$(find /Users -type d -maxdepth 1 | cut -d"/" -f3);

# delete loop
for i in $users; do
 if [[ $i = "spg-admins" ]] || [[ $i = "Shared" ]] || [[ $i = "admin" ]] || [[ $i = "root" ]]; then
  echo "User is OK";
  continue
 else
  echo "Users is not ok";
  #sudo /usr/bin/dscl . delete /Users/$i
  #sudo rm -Rf /Users/$i
 fi
done

# End script
