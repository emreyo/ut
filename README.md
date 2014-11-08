ut
==

youtube mp3 downloader written in bash

usage: 

    ut "song name|artist name|album name|..."

example: 

    ut "dream theater"

the above code searches the string "dream theater" and downloads the first result, then converts it to mp3. 

uses youtube-dl. needs root permission to copy itself into ~/bin/ and install youtube-dl if not present in the system. if you don't want to give root privileges, just install youtube-dl and create ~/bin/. 

if you get errors, they're either because you installed youtube-dl from repository or because you don't have proper codecs. google error message and find it. 

pull requests are welcome. 

i hope this helps someone. 

**todo:**

* check for args
* menu? 
* use getopts
* get -k flag, for example
