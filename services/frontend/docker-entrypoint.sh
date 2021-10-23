#!/bin/bash
I="\e[1;32m::\e[00m"
echo -e "$I Starting Vue Server..."

#node_modulesインストール
echo "yarn install"
yarn install 

#vue起動
echo "yarn serve. "
yarn serve
