#!/usr/bin/env bash
if ! type tcping >/dev/null 2>&1; then
	wget https://raw.githubusercontent.com/jamespan2012/shbox/main/dependencies/tcping -O /usr/bin/tcping
	chmod +x /usr/bin/tcping
fi