#!/bin/bash

count=1

while [ $count -lt 2 ]
    do
      echo -e "What package manager do you use?\n1)DNF"
            read -n 1 -s input

      if [ $input = '1' ]
       then
           pacmgr=dnf
           count=$(( count+1 ))

       else
           clear
           echo -e "ERROR! only 1 or 2\n"
      fi
    done

echo 'Please wait the system is updating'
     sleep 5s

sudo $pacmgr install unzip -y
     sudo $pacmgr install zip -y
     sudo $pacmgr upgrade -y
clear

echo "Whats is your username?"
      read -n 15 username
clear



echo "Please wait as the system is unpacking your files"
      sleep 5s

unzip backup.zip -d /home/$username/
    cd /home/$username/newsetup
          mv -v Scripts /home/$username
          mv -v documents /home/$username/Documents
    cd /home/$username
          rm -r newsetup
    cd /home/$username/Downloads
          rm newsetup.zip

sudo chown $username /home
      mkdir /home/.data
      touch /home/.data/Data1.txt
      touch /home/.data/Data2.txt
sudo chown root /home

echo $username > home/.data/Data1.txt

echo $pacmgr> home/.data/Data2.txt

clear

if [ $pacmgr = 'dnf' ]
 then
     source /home/$username/backuptool/Fedora/fdmenu.sh
fi




