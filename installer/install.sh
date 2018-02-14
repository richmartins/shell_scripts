#!/bin/bash

# author : Richard Tenorio@EPFL
# use : install apps
# mail : richard.martinstenorio@epfl.ch
# #####################################
clear
# list of app to check
declare -a apps=( "Firefox" "ENACdrive" "VLC");

# function to download the installer
function download_app () {
  # mount
  # scp
  # cat to see the error
  curl --proto-redir -all,smb -u installer:a12345678A -L -O "http://enacit3pc100.epfl.ch/Share_APP"
  app=$1'.pkg.zip'
  install_app $app

}
function install_app () {
  # need to verify if it is a .dmg or .pkg
  unzip -a $1
  installer -pkg $1 -target /
}

# function to check if the app are already installed
function check_app () {
  if [ ! -d "~/insaller_app" ];then
    mkdir ~/installer_app
  fi
  cd ~/installer_app
   # compare Applications repo and array apps
   for i in "${apps[@]}";do
	    if open -Ra "$i" ;then
        echo $i 'is already installed'
      else
        echo 'INFO :' $i 'is not installed'
        download_app $i
      fi
    done
}

# MAIN #

check_app

rm -R ~/installer_app
# END MAIN #

# END script
