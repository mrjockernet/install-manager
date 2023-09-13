#!/bin/bash
#inicializando
frase="\033[1;33me necessaria a instalacao\n   de alguns arquivos para o bom funcionamento\n  do sistema"
echo -e "\033[1;31m========\033[1;33mA instalacao foi iniciada, aguarde\033[1;31m========\n"
echo -e "        $frase                           \n"
echo -e "\033[1;31m==================@mrjockernet===================="
sleep 3
#instalacao
termux-setup-storage;
pkg update -y;
pkg upgrade -y;
pkg install wget;
pkg install curl wget man bc git python tree ffmpeg busybox termux-tools android-tools zstd xz-utils;
curl -sL https://raw.githubusercontent.com/bajrangCoder/acode-plugin-acodex/main/installServer.sh | bash;
git clone https://github.com/mrjockernet/jknet/;
cd jknet;
mv menujk /data/data/com.termux/files/usr/bin;
chmod +rwx /data/data/com.termux/files/usr/bin/menujk;
sleep 1
echo -e "\033[1;32mFinalizando..."
sleep 2
echo -e "\033[1;32mPara acessar, digite: menujk e de enter"
sleep 1

