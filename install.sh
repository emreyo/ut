#!/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "* error - need root"
	exit 1
fi

if [ ! -d "$HOME/bin" ]; then
	mkdir -p "$HOME/bin"
fi

if [ -z `which youtube-dl` ]; then
	sudo curl https://yt-dl.org/downloads/2014.09.22/youtube-dl -o /usr/local/bin/youtube-dl
	sudo chmod a+x /usr/local/bin/youtube-dl
fi

[ -z "$(dpkg --get-selections | grep libav-tools)" ] && sudo apt-get install -y libav-tools

cp ./ut "$HOME/bin/ut"
chmod +x "$HOME/bin/ut"
