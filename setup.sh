#!/data/data/com.termux/files/usr/bin/bash


termux-setup-storage
sleep 5s

apt update && apt upgrade -y 


#Install required packages
pkg install python ffmpeg -y 


#Install youtube-dl and spotdl
pip install -U youtube-dl  
pip install -U spotdl


#Youtube-dl configuration
if [[ ! -d /data/data/com.termux/files/home/storage/downloads/Youtube ]]; then
  mkdir /data/data/com.termux/files/home/storage/downloads/Youtube
fi 
#For config file
if [[ ! -d ~/.config/youtube-dl ]]; then
  mkdir -p ~/.config/youtube-dl  
fi 
#Create youtube-dl config & backup
if [[ -e /data/data/com.termux/files/home/.config/youtube-dl/config ]]; then
  mv ~/.config/youtube-dl/config ~/.config/youtube-dl/config.backup
fi 
cp config ~/.config/youtube-dl/


#spotdl configuration
if [[ ! -d /data/data/com.termux/files/home/storage/shared/Music ]]; then
  mkdir /data/data/com.termux/files/home/storage/shared/Music
fi 
#Create spotdl config and backup
if [[ -e /data/data/com.termux/files/home/.config/spotdl/config.yml ]]; then
  mv ~/.config/spotdl/config.yml ~/.config/spotdl/config.backup
fi 
if [[ ! -d /data/data/com.termux/files/home/.config/spotdl ]]; then
  mkdir /data/data/com.termux/files/home/.config/spotdl
fi 
cp config.yml ~/.config/spotdl/config.yml


#Create bin folder for termux-url-opener and termux-file-editor
if [[ ! -d ~/bin ]]; then
  mkdir ~/bin
fi 
if [[ -e ~/bin/termux-url-opener ]]; then
  rm ~/bin/termux-url-opener
fi 
if [[ -e ~/bin/termux-file-editor ]]; then
  rm ~/bin/termux-file-editor
fi 
#Copy termux-url-opener and termux-file-editor into ~/bin
cp termux-url-opener ~/bin
chmod +x ~/bin/termux-url-opener
cp termux-file-editor ~/bin
chmod +x ~/bin/termux-file-editor


echo "Setup Complete"
echo "To Download the Tracks/Videos:"
echo "    >Tap on 'Share' in Spotify/Youtube"
echo "    >Select the 'Termux' app"
read -n 1 -s -p "Press Any Key To Exit..."
