
# termux-downloader

A script to install and configure [spotdl](https://github.com/ritiek/spotify-downloader) and [youtube-dl](https://github.com/ytdl-org/youtube-dl) to download music and videos in Android using the [Termux App](https://play.google.com/store/apps/details?id=com.termux).

* Download Spotify songs or albums with metadata.
* Download videos from Youtube or other video platforms.
* Download entire webpage for offline use.

# Usage

* **Youtube**
  * Open the desired Youtube video. Launch the "Share" option and select Termux. The downloaded file(s) will appear in the default 'downloads' directory.
* **Spotify**
  * Open the desired Spotify track/album/playlist. Launch the "Share" option, select "Other" and look for Termux. The file(s) will be downloaded to the default 'Music' directory.
* **Webpages** (Recursive)
  * Share the webpage from the browser into Termux. The webpages(s) will be downloaded to the 'downloads' directory.

# Installation

* Install Termux from [Google Play Store](https://play.google.com/store/apps/details?id=com.termux) or [F-Droid](https://f-droid.org/en/packages/com.termux/)

* This downloader can be installed by launching Termux and running the next line inside the app.

```
pkg install git -y; git clone https://github.com/petkar/termux-downloader.git; cd termux-downloader; chmod +x setup.sh; ./setup.sh && exit
```

* Copy the given line, paste it into Termux and simply wait for the installation to complete.

**NOTE : Provide necessary storage permission if prompted.**

# Disclaimer

Downloading copyright songs may be illegal in your country. This script is for educational purposes only and uses tools which were created only to show how Spotify's  and Youtube's API could be exploited to download music and videos. Please support the artists by buying their content.
