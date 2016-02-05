#######################################################
#File Name: addcopyright.sh
#Author: Match
#Email: Match.YangWanQing@gmail.com
#Description:
#
######################################################
#!bin/bash
replace='/**
 * Copyright (C) 2015 Deepin Technology Co., Ltd.
 **
 ** This program is free software; you can redistribute it and/or modify
 ** it under the terms of the GNU General Public License as published by
 ** the Free Software Foundation; either version 3 of the License, or
 ** (at your option) any later version.
 ***/'
 if [ $# != 4 ]
 then
	 echo "Usage:addcopyright.sh -e [EXTENSION_NAME] -p [PATH]"
 else
	 for f in $(find $4 -name "*.$2");
	 do
		 echo "Adding copyright to $f"
		 echo "$replace">$f.new
		 cat $f>>$f.new
		 mv $f.new $f
	 done
 fi
