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
exit 0 

FONT=( 'size=12' )
ICON="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"

last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=DASHEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 2 "$last" "$ICON"
echo "---"

