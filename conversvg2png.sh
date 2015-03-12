#######################################################
#File Name: conversvg.sh
#Author: Match
#Email: Match.YangWanQing@gmail.com
#Created Time: Wed 11 Mar 2015 11:18:36 AM CST
#Description:
#
######################################################
#!bin/bash
selfname=`basename $0`
TARGETDIR=./PngFile/
if [ ! -d $TARGETDIR ];then
	mkdir $TARGETDIR
fi
x=0
for filename in *;
do
	if [ "$selfname" = "$filename" ] || [ "$TARGETDIR" = "./$filename/" ];then
		continue
	else
		resourceName=$filename
		targetName=${resourceName%.svg}.png
		if [ -e $TARGETDIR$targetName ];then
			echo "$targetName exist!"
			continue
		fi
		echo "Converting $resourceName to $targetName..."
		inkscape $resourceName --export-png=$TARGETDIR$targetName
	fi
done
