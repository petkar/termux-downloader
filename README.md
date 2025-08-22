
# termux-downloader

A simple bash script to install and configure [spotdl](https://github.com/spotdl/spotify-downloader) and [yt-dlp](https://github.com/yt-dlp/yt-dlp) to download music and videos in Android using the [Termux App](https://play.google.com/store/apps/details?id=com.termux).

* Download Spotify songs, albums, and playlists with metadata.
* Download videos from Youtube and other video platforms.

# Usage

Simply share a URL from Spotify, Youtube, or other video sites to Termux. The script will automatically download the content.

* **Spotify:** Songs, albums, and playlists will be downloaded to the `~/storage/shared/Music` directory.
* **Youtube and others:** Videos will be downloaded to the `~/storage/downloads/Youtube` directory.

# Installation

1. Install Termux from [Google Play Store](https://play.google.com/store/apps/details?id=com.termux) or [F-Droid](https://f-droid.org/en/packages/com.termux/).
2. Open Termux and run the following command:

```bash
pkg install git -y && git clone https://github.com/petkar/termux-downloader.git && cd termux-downloader && chmod +x setup.sh && ./setup.sh && exit
```
3. Grant storage permission to Termux when prompted.

# Disclaimer

Downloading copyright songs may be illegal in your country. This script is for educational purposes only and uses tools which were created only to show how Spotify's  and Youtube's API could be exploited to download music and videos. Please support the artists by buying their content.
