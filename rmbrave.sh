#!/bin/bash
count=1
$pckmgr=`cat /home/.data/Data2.txt`

while [ $count -lt 2 ]
     do
       echo "Would you like to uninstall brave?[Y/N]"
             read -n 1 -s input

       if [ $input1 = "Y" ]
        then
            sudo $pckmgr remove -y brave*

            count=$(( count+1 ))

       elif [ $input1 = "y" ]
        then
            sudo $pckmgr remove -y brave*

            count=$(( count+1 ))

       elif [ $input1 = "N" ]
        then
            clear

            count=$(( count+1 ))

       elif [ $inputs = "n" ]
        then
            clear

            count=$(( count+1 ))

       else
           clear

           echo -e "ERROR! Only Y,y or N,n\n"
       fi
     done
