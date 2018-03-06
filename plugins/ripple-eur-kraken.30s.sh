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
ICON="iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAQAAAD8fJRsAAAAsUlEQVQYGQXBsS5DYRgA0PPf+5HbWOoBDCYRg85dLJImRqOZyRN08wSdPYPwEAwiMUh0wANImohIGyLcW59zACjg1KuZsQoqtVpgJKWUjkLxB2AXnbRiGNKGoS83FqaWAtyx40lKV9g092tqbJVzqZXSo2c/DjUQ1sBSrY+ik8CeuZTurdvy7tuDM71wbd+BhUsftjUaAwNvAMCx1GqliwoVisCLTgjcAgUFnJj5NNH7B52sOnUySmD9AAAAAElFTkSuQmCC"

last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=XRPEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 2 "$last" "$ICON"
echo "---"

