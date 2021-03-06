#!/bin/bash

clear;

echo 'You must be root to run my script bro'

if [ -d '~/script_temp' ]; then
  sudo mkdir ~/script_temp/
else
  echo 'Folder exists';
fi
cd ~/script_temp/

if [ -e '/ L i b r a r y / P r i n t e r s / P P D s / C o n t e n t s / R e s o u r c e s / C a l d e r a M a c . P P D' ];then
 echo 'driver already installed';
else
  sudo curl -u sharing:1 smb://it3pc1.epfl.ch/Share/CalderaMac.PPD;
  sudo cp CalderaMac.PPD / L i b r a r y / P r i n t e r s / P P D s / C o n t e n t s / R e s o u r c e s / C a l d e r a M a c . P P D ;
fi

echo 'Installing printers ...';
sudo lpadmin -p SG0215A0C1 -E -v smb://printEPFL3/SG0215-A0-C1-Couche -P "/Library/Printers/PPDs/Contents/Resources/CalderaMac.PPD" -o printer-is-shared=false -o PageSize=A0 -u allow:all -o auth-info-required=username,password -o XRBannerSheet=None;
sudo lpadmin -p SG0215A0C2 -E -v smb://printEPFL3/SG0215-A0-C2-Couche -P "/Library/Printers/PPDs/Contents/Resources/CalderaMac.PPD" -o printer-is-shared=false -o PageSize=A0 -u allow:all -o auth-info-required=username,password -o XRBannerSheet=None;
sudo lpadmin -p SG0215A0C3 -E -v smb://printEPFL3/SG0215-A0-C3-Couche -P "/Library/Printers/PPDs/Contents/Resources/CalderaMac.PPD" -o printer-is-shared=false -o PageSize=A0 -u allow:all -o auth-info-required=username,password -o XRBannerSheet=None;
sudo lpadmin -p SG0215A0C4 -E -v smb://printEPFL3/SG0215-A0-C4-Couche -P "/Library/Printers/PPDs/Contents/Resources/CalderaMac.PPD" -o printer-is-shared=false -o PageSize=A0 -u allow:all -o auth-info-required=username,password -o XRBannerSheet=None;
sudo lpadmin -p SG0215A0C5 -E -v smb://printEPFL3/SG0215-A0-C5-Couche -P "/Library/Printers/PPDs/Contents/Resources/CalderaMac.PPD" -o printer-is-shared=false -o PageSize=A0 -u allow:all -o auth-info-required=username,password -o XRBannerSheet=None;
sudo lpadmin -p SG0215A0C6Photo -E -v smb://printEPFL3/SG0215-A0-C6-Photo -P "/Library/Printers/PPDs/Contents/Resources/CalderaMac.PPD" -o printer-is-shared=false -o PageSize=A0 -u allow:all -o auth-info-required=username,password -o XRBannerSheet=None;
echo 'printers installed';

if open -Ra "Firefox"; then
    echo 'Firefox is already installed';
else
    echo 'installing Firefox ...'
    sudo curl -u sharing:1 -O  smb://it3pc1.epfl.ch/Share/Firefox.app
    sudo cp -R Firefox.app /Applications/
    echo 'Firefox Installed'
fi

if open -Ra Adobe\ Acrobat\ Reader\ DC; then
    echo 'Acrobat Reader is Installed';
else
    echo 'Installing Acrobat Reader ...';
    sudo curl -u sharing:1 -O  smb://it3pc1.epfl.ch/Share/AcroRdrDC_1800920044_MUI.pkg
    sudo installer -pkg AcroRdrDC_1800920044_MUI.pkg -target /;
    echo 'Acrobat Installed';
fi
