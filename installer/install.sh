#!/bin/bash

# author : Richard Tenorio@EPFL
# use : install apps

# list of app to check
apps=( "Firefox.app" "ENACdrives.app" )

# function to download the installer
function download_app () {
  echo 'dowloading : $1 ...'
  curl # ...
}


# function to check if the app are already installed
function check_app () {
   # compare Applications repo and array apps
   for i in "${apps[@]}";do

	    if [ i == open -Ra "$i" ];then
        echo '[appname] is already installed'
      else
        download_app $i
      fi

    done
}

# MAIN #
check_app

# END MAIN #

# END script
