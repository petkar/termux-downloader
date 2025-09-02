#!/data/data/com.termux/files/usr/bin/bash


termux-setup-storage
sleep 5s

apt update && apt upgrade -y 


#Install required packages
pkg install python ffmpeg jq -y


#Install yt-dlp and spotdl
pip install -U yt-dlp
pip install -U spotdl


# Create download directories by parsing config.json
echo "Creating download directories..."
eval mkdir -p $(jq -r '.general.paths[]' config.json)

# spotdl configuration
# Create spotdl config and backup
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
