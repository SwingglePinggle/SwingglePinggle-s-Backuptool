#!/bin/bash
count=1
pckmgr=`cat /home/.data/Data2.txt

while [ $count -lt 2 ]
     do
       echo "Are you here to uninstall Wine?[Y/N]"
             read -n 1 -s  input

       if [ $input = "Y" ]
        then
            sudo $pckmgr remove -y wine*

            count=$(( count+1 ))

       elif [ $input = "y" ]
        then
            sudo $pckmgr remove -y wine*

            count=$(( count+1 ))

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


