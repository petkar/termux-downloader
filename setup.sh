#!/data/data/com.termux/files/usr/bin/bash


termux-setup-storage
sleep 5s

apt update && apt upgrade -y 


#Install required packages
pkg install python ffmpeg -y 


#Install yt-dlp and spotdl
pip install -U yt-dlp
pip install -U spotdl


#yt-dlp configuration
if [[ ! -d $HOME/storage/downloads/Youtube ]]; then
  mkdir -p $HOME/storage/downloads/Youtube
fi
#For config file
if [[ ! -d $HOME/.config/yt-dlp ]]; then
  mkdir -p $HOME/.config/yt-dlp
fi
#Create yt-dlp config & backup
if [[ -e $HOME/.config/yt-dlp/config ]]; then
  mv $HOME/.config/yt-dlp/config $HOME/.config/yt-dlp/config.backup
fi
cp config $HOME/.config/yt-dlp/


#spotdl configuration
if [[ ! -d $HOME/storage/shared/Music ]]; then
  mkdir -p $HOME/storage/shared/Music
fi
#Create spotdl config and backup
if [[ -e $HOME/.spotdl/config.json ]]; then
  mv $HOME/.spotdl/config.json $HOME/.spotdl/config.backup
fi
if [[ ! -d $HOME/.spotdl ]]; then
  mkdir -p $HOME/.spotdl
fi
cp config.json $HOME/.spotdl/config.json


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
