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
ICON="iVBORw0KGgoAAAANSUhEUgAAAAkAAAAOCAQAAABXnf4jAAAAq0lEQVQY02NggAETBjQgz9DBYI0swMyQyNDJuJ6BDSFkxVAMFDrDkAYTEGTIhwgxHmdQgAiFMpQw9DJuY7zGeIZpFgMjA4MBwxTGXYzHGS8wvmZ8zniLIYCBwYZxPVAAIvSa8QpISBKoLopxD1DoEUMrgweDHsgsF4YYBh2GIgY7pnlMFRDjWRjigTbmM55mWsnADnOGMEMe0BHHGFSR3a/P0MkQjO5LWxgDAEM0Jan03Jl4AAAAAElFTkSuQmCC"

last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=ETHEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 0 "$last" "$ICON"
echo "---"

