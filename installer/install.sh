#!/bin/bash

# author : Richard Tenorio@EPFL
# use : install apps
clear
# list of app to check
declare -a apps=( "Firefox" "ENACdrive" "VLC")

# function to download the installer
function download_app () {
  curl -u sharing:sharing -O http://it3pc1.epfl.ch/Share/$1.pkg.zip
  app=$1'.pkg.zip'
  install_app $app

}
function install_app () {
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

# rm -R ~/installer_app
# END MAIN #

# END script
