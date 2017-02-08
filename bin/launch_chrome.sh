#!/bin/bash -x
if [ $TOR = True ]
	then
		echo "using tor" > /tmp/tor_status.log
		tor &
		sleep 3s
		/usr/bin/google-chrome-stable --no-sandbox --user-data-dir=/root/chrome-profile/ --ignore-gpu-blacklist --no-first-run --start-maximized --proxy-server="socks5://127.0.0.1:9050" --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE 127.0.0.1" --enable-file-cookies https://check.torproject.org/
	else
		echo "not using tor" > /tmp/tor_status.log
		sleep 3s
                /usr/bin/google-chrome-stable --no-sandbox --user-data-dir=/root/chrome-profile/ --ignore-gpu-blacklist --no-first-run --start-maximized --enable-file-cookies
fi
