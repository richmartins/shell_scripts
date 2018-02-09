#!/bin/bash
# remove Users Salle SG0215 2018
# pdj ft. rvmt 09-2-2018
# #
# #
clear;

# ### ask root access
sudo;

# ### var(s)
users=`find /Users -type d -maxdepth 1 | cut -d"/" -f3`;

# ### connect function to the computers
connectF(userSHH, ipSHH,){
  # connect with ssh
  ssh $userSSH@$ipSHH
  # copy script from share point
  scp -p -r installer@enacit3pc100.epfl.ch:/Share_APP/userdel.sh ~/Desktop/
  # launch it
  cd ~/Desktop/ 
  sudo ./userdel.sh
}


# ### delete function
deleteF(user){
  for i in $user; do
   if [[ $i = "spg-admins" ]] || [[ $i = "Shared" ]] || [[ $i = "admin" ]] || [[ $i = "root" ]]; then
    continue
   else
    /usr/bin/dscl . delete /Users/$i
    rm -Rf /Users/$i
   fi
  done
}

# ### Main
deleteF($users);

# ### end script
