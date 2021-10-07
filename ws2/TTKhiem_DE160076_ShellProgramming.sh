#Assignment: Shell Programming
#Class ID: SE1602
#Student ID: DE160076
#Student Name: Ton That Khiem
#Source File: TTKhiem_DE160076_ShellProgramming.sh

choice=a
function show_menu {
	is_enter=0
	while [ $is_enter == 0 ]
	do
		echo "Hit <Enter> to continue"
		read key

		if [[ $key == "" ]]
		then
			break
		fi
	done
}

while [[ "$choice" != "q" && "$choice" != "Q" ]]
do
	echo "*****************************************" 
	echo "Please choose from the following options; type the option number and hit the <Enter> key."

	echo "a or A	To display the current directory"
	echo "b or B	To list names of the files in a given directory"
	echo "c or C	To display today's date and time"
	echo "d or D	To display whether a file is a simple file or directory"
	echo "e or E	To execute a command line"
	echo "q or Q	To exit the program"
	echo "*****************************************"
	echo
	echo "Enter your choice and hit <Enter>:"
	read choice

	if [[ "$choice" == "a" || "$choice" == "A" ]]
	then
		echo "Current Directory:"
		pwd
	elif [[ "$choice" == "b" || "$choice" == "B" ]]
	then
		echo "Please enter the directory path:"
		read path
		ls -al $path
	elif [[ "$choice" == "c" || "$choice" == "C" ]]
	then
		date
	elif [[ "$choice" == "d" || "$choice" == "D" ]]
	then
		echo "Please enter firename:"
		read arg
		if [ -f "$arg" ] 
		then
			echo "$arg is an ordinary file"
		elif [ -d "$arg" ]
		then
			echo "$arg is a directory"
		else
			echo "$arg does not exist!"
		fi
	elif [[ "$choice" == "e" || "$choice" == "E" ]]
	then
		read cmd
		$cmd
	elif [[ "$choice" == "q" || "$choice" == "Q" ]]
	then
		break
	fi
	show_menu
done
echo "Thanks for using me!"
