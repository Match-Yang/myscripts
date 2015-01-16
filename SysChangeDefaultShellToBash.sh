#!/bin/bash
#Date:2014.12.25
#Author: WanQing Yang match.yangwanqing@gmail.com
#Description:
#	Set current user default shell to bash
shellPath=`which bash`
chsh -s ${shellPath}
if [ $? == 0 ]
then
	echo 'Change default shell to bash done!'
else
	echo 'Change default shell to bash fail!'
fi
