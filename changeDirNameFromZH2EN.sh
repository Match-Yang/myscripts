#######################################################
#File Name: changeDirNameFromZH2EN.sh
#Author: Match
#Email: Match.YangWanQing@gmail.com
#Created Time: 2015年01月23日 星期五 09时58分32秒
#Description:
#	Changed home's dir name like 桌面 to english name Desktop
#
######################################################
#!bin/bash
export LANG=en_US
xdg-user-dirs-gtk-update
export LANG=zh_CN
