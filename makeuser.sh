#!/bin/bash
#
#User-Maker, User-Maker, Make Me a User Script
#
################################################################################
#
#If incorrect number of arguements are specified, it will emit a helper message and exit
#The 1st arguement is the new user name
#The 2nd arguement is the login name
#The script creates a new user group for user
#The script automatically creates a directory in /home for the new user and sets ownership
#The script creates a .bash_profile and .bashrc file in the new home directory
#	If /etc/profile exists, it will be copied to the new ~/.bash_profile file, else it will be empty
#	If /etc/bashrc exists, if will be copied to the new ~/.bashrc file, else it will be empty
#All new files and folders are assigned ownership to the new user
#
#################################################################################
#
# check for proper syntax
if [[ $1 == () ]]; then
	echo 'Please use the following syntax: "./makeuser username"'
	exit
	# prints helper message and exits
else
	useradd -m -g user -G new users /bin/bash $1
	#creates new user
if [ -f /etc/profile ]; then
	cp /etc/profile /home/$1
	# if /etc/profile exists, copy to user home directory
else
	mkdir /home/$1/.bash_profile
	# if /etc/proile doesn't exist, create the /.bash_profile file
fi
if [ -f /etc/bashrc ]; then
	cp /etc/bashrc /home/$1
	# if /etc/bashrc exists, copy to the user home directory
else
	mkdir /home/$1/.bashrc
	# if /etc/bashrc doesn't exist, create the /.bashrc file
fi 
