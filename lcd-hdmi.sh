#!/bin/bash
# Script developed to switch fast between 
# HDMI and LCD through SPI
# Valid for the waveshare displays of 4", 3.5" and 3.2"
# for raspberry pi through the drivers provided

#Copyright (C) 2015  Pablo San José Burgos
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

#For further information please contact the author by email:
#	pabloguinness@gmail.com						




args=("$@")

if [ ${args[0]} = "-hdmi" ]; then
	echo "Trying to switch to HDMI output"
	echo "This might take a while"
	echo "This is going to restart your Raspberry Pi"
	sudo HDMI-SYS-SHOW

elif [ ${args[0]} = "-lcd" ]; then
	echo "Trying to switch to LCD output"
	echo "This might take a while"

	if [ ${args[1]} == 32 ]; then
		echo "This is going to restart your Raspberry Pi"
		sudo LCD32-SYS-SHOW

	elif [ ${args[1]} == 35 ]; then
		echo "This is going to restart your Raspberry Pi"
		sudo LCD35-SYS-SHOW
	
	elif [ ${args[1]} == 4 ]; then
		echo "This is going to restart your Raspberry Pi"
		sudo LCD4-SYS-SHOW

	else
		echo "Bad argument 2!"
		echo "Quitting!"
	fi
else
	echo "Bad argument 1!"
	echo "Quitting!"
fi

