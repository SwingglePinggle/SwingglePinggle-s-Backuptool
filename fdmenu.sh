#!/bin/bash
count=1
username=`cat /home/.data/Data1.txt

cd  /home/$username/Downloads
mv -v startnw.sh /home/$username/
clear

while [ $count -lt 2 ]
	 do
	    echo -e "What would you like to install? \n1)Terminal Plugins\n2)Wine\n3)Brave Browser)"
	     read -n 1 -s input

        if [ $input = '1' ]
		 then
	         source /home/$username/backuptool/Universal/termtools.sh

	         count=$(( count+1 ))

	    elif [ $input =  '2' ]
	     then
		     source /home/$username/backuptool/Fedora/wine.sh

		     count=$(( count+1 ))

	    elif [ $input = '3' ]
		 then
		     source /home/$username/backuptool/Fedora/brave.sh

		     count=$(( count+1 ))
		else
		    clear

	        echo -e "ERROR! Only 1,2,3\n"
	    fi
      done

