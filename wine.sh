#!/bin/bash
count=1
username=`cat /home/.data/Data1.txt`

 while [ $count -lt 2 ]
      do
        echo -e "Are you here to?\n1)Install Wine\n2)Uninstall Wine "
              read -n 1 -s input1

        if [ $input1 = "1" ]
         then
	         clear

             count=$(( count+1 ))

        elif [ $input1 = "2" ]
         then
             clear

             count=$(( count+1 ))

             source /home/$username/backuptool/Universal/rmwine.sh

        else
            clear

	        echo -e " ERROR! Only 1 or 2\n"
        fi
      done

count=$(( count-1 ))

while [ $count -lt 2 ]
     do
       echo "Would you like to install Wine?[Y/N]"
             read -n 1 -s input2

      if [ $input2 = "Y" ]
       then
           sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/35/winehq.repo
                 sudo dnf install -y winehq-stable

           count=$(( count+1 ))

      elif [ $input2 = "y" ]
       then
           sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/35/winehq.repo
                 sudo dnf install -y winehq-stable

           count=$(( count+1 ))

      elif [ $input2 = "N" ]
       then
           clear

           count=$(( count+1 ))

      elif [ $input2 = "n" ]
        then
            clear
            count=$(( count+1 ))

      else
          clear
          echo -e "ERROR! Only Y,y or N,n\n"
     fi
   done

count=$(( count-1 ))

while [ $count -lt 2 ]
     do
	   echo "Would you like to go back to the Menu?[Y/N]"
       read -n 1 -s input3

	  if [ $input3 = "Y" ]
       then
           count=$(( count+1 ))
           source /home/$username/backuptool/Fedora/fdmenu.sh

	  elif [ $input3 = "y" ]
       then
	       count=$(( count+1 ))
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
