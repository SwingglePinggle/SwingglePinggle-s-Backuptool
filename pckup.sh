#!/bin/bash
count=1

while [ $count -lt 2 ]
    do
      echo -e "WARING DO NOT RUN AS ROOT! Read the README.txt files for why\n\n\nWould you like to proceed?[Y/N]"
            read -n 1 -s input

       if [ $input = 'y' ]
        then
            count=$(( count+1 ))

       elif [ $input = 'Y' ]
        then
            count=$(( count+1 ))

       elif [ $input = 'n' ]
        then
            count=$(( count+1 ))

            exit

       elif [ $input = 'N' ]
        then
            count=$(( count+1 ))

            exit

       else
           clear

           echo -e "ERROR! Only Y,y or N,n\n"

       fi
     done

echo "What's your username?"
      read -n 15 username
      clear

echo "Please wait as the system is packing up your files"
      sleep 5s

mkdir backup
      mv -v Scripts /home/$username/newsetup
      cp -vr Documents /home/$username/newsetup
      cd /home/$username/newsetup
      mv -v Documents documents
      cd ..
      zip -rv backup.zip backup

echo "Your all set! The zip files sould be at /home/username/"
