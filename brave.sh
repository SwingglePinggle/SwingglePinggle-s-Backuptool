#!/bin/bash
count=1
username=`cat /home/.data/Data1.txt`

while [ $count -lt 2 ]
      do
       echo -e "Are you here to install or uninstall Brave?\n1)Install\n2)Unistall"
             read -n 1 -s input1

        if [ $input1 =  1 ]
         then
	         clear
	         count=$(( count+1 ))

        elif [ $input1 = 2 ]
         then
             source /home/$username/backuptool/Universal/rmbrave.sh

        else
            clear
            echo -e "ERROR! Only 1 or 2\n"
        fi
      done

count=$(( count-1))

while [ $count -lt 2 ]
     do
       echo "Would you like to install brave?[Y/N]"
            read -n 1 -s input

       if [ $input = "Y" ]
        then
            count=$(( count+1 ))

            sudo dnf config-manager -y --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
                  sudo rpm -y --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
                  sudo dnf -y install brave-browse

      elif [ $input = "y" ]
       then
           count=$(( count+1 ))

           sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
                 sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
                 sudo dnf install brave-browser

       elif [ $input = "N" ]
        then
            clear

            count=$(( count+1 ))

       elif [ $input = "n" ]
        then
	        clear

            count=$(( count+1 ))

       else
           clear

           echo -e "ERROR! Only Y,y or N,n\n"
       fi
     done

count=$(( count-1))

while [ $count -lt 2 ]
     do
	   echo "Would you like to go back to the Menu?[Y/N]"
             read -n 1 -s input3

	  if [ $input3 = "Y" ]
       then
           source /home/$username/backuptool/Fedora/fdmenu.sh

	  elif [ $input3 = "y" ]
       then
	       source /home/$username/backuptool/Fedora/fdmenu.sh

	  elif [ $input3 = "N" ]
	   then
	       clear

	       count=$(( count+1 ))

	  elif [ $input3 = "n" ]
	   then
	       clear

	       count=$(( count+1 ))

	  else
          clear

	      echo -e "ERROR! Only Y,y or N,n\n"
	  fi
     done



