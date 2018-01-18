#!/bin/bash

echo "This script must be run as root"
echo "proceed ? (y/n)"
read ans
if [[ $ans = "y" ]]
then
	echo "Updating .... "
 	apt-get update 
 	echo "Upgrading"
  	apt-get upgrade

  	
  	#Install Sublime Text 3*
	 
	 echo "Install Sublime Text ? (y/n)"
	 read ans
	 if [[ $ans = "y" ]]
	 then
	 	add-apt-repository ppa:webupd8team/sublime-text-3
		apt update
		apt install sublime-text-installer
	 fi


	 #Install LAMP stack
	 
	 echo "Install Lamp Stack ? (y/n)"
	 read ans
	 if[[ $ans = "y" ]]
	 then
		 echo "Installing Apache"
		 apt install apache2 
		 
		 echo "Installing Mysql Server"
		 apt install mysql-server 

		 echo "Installing PHP"
		 apt install php libapache2-mod-php php-mcrypt php-mysql 
		 
		 echo "Installing Phpmyadmin"
		 apt install phpmyadmin 

		 echo "Cofiguring apache to run Phpmyadmin"
		 echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
		 
		 echo "Restarting Apache Server"
		 service apache2 restart
	 fi 


		 #Install Nodejs

		 echo "Install Nodejs ?"
		 read ans
		 if [[ $ans = "y" ]]
		 then
		 	curl -sL https://deb.nodesource.com/setup_6.x | -E bash -
		 	apt install nodejs
		 fi


	 	#Install git
	 	
	 	echo "Installing Git, please congiure git later... (y/n)?"
	 	read ans
	 	if [[ $ans = "y" ]]
	 	apt install git
	 	fi


		 #Chrome
		 
		 echo "Install Google Chrome ? (y/n)"
		 read ans
		 if[[$ans = "y"]]
		 then
		 	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
		 	sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
		 	apt update 
		 	apt install google-chrome-stable
		 