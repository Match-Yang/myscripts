#######################################################
#File Name: installhexo.sh
#Author: Match
#Email: Match.YangWanQing@gmail.com
#Created Time: Thu 04 Feb 2016 09:48:01 AM CST
#Description:
#
######################################################
#!bin/bash
wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
nvm install 4
npm install -g hexo-cli
