#!/bin/bash

# <bitbar.title>Monero BTC price at Kraken</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Monero.how</bitbar.author>
# <bitbar.author.github>monerohow</bitbar.author.github>
# <bitbar.desc>Shows the last Monero price (in BTC) on the Kraken exchange</bitbar.desc>
# <bitbar.image>https://raw.githubusercontent.com/monerohow/misc/master/mac-menu-bar-light-and-dark.jpg</bitbar.image>
# <bitbar.abouturl>https://www.monero.how</bitbar.abouturl>
#
# Visit https://www.monero.how for Monero tutorials, paper wallets and the latest Monero news
#

# Uncomment to disable this plugin
#exit 0

FONT=( 'size=12' )
icon='iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABIUlEQVQ4jY3SsS4EQBAG4K8RJ6LyAk4vF6IQlQcgOlEIWrUn8AqcnCAaV6lFohHRkCh0LneJRlQ8gBPJUeySzd6G+5MtZufff2f+GfoxjQN08BFPGw3UCvxfjOAYX3+cXhSvlB7fZOQnvOEhVpHmrnOR0s+baGICL4V8I+05TZxiDZOYx2gUuyi0UxN7ShO32Ijiq9hBNcaXGXef4HZe3nl80IzxboyPMl5LwaBUYAErGMM4njNe9z+BLZxED2CmJNAeoIVPYdRDGe+RMI708g6LUWAZ25iN8VLG3SOMopdcngnuVzEnjHEdh3hPeD1MReG+UQ6ySHUJKsJ6poQOXnFfMPoKwzJUYiU9/b+lZddLj1PUhA1rCWPqCm7vpT3/4BvxyJ7p5+ukxAAAAABJRU5ErkJggg=='
last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=XBTEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 0 "$last" "$icon"
echo "---"
