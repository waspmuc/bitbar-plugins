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
icon='iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAMAAABhq6zVAAABIFBMVEUAAAD//wCAAAC/QACqVQDfgADRdADqgADrYgD1hRTudxHzfBP5gBf0fRfwfhPwfhLwgBbxgBLxfhXufhTzgBXxgRTufRb2gBXwfRXxfxXxfRX1hBb1gxX1ghbvfxbvfhb4gxXxfhb5gRb0gRbwfxX6iBfzfxXwgBX1ghb9ihbzgBbxfhb1ghb1gxbyfxbygBX9ixbwfxXxfxbxgBbxfxbzgBXwfxXxfxXzfxXwfhXxfhXxgBXzfhXzgBXwfxXxfxXzfxXzgRX2ghX5hxb9hRbxgBXzgBX1gxb4hBb5hhb9hxbxfxbxgBbzgBb0gBb2gRb2ghb4ghb4hBf4hRf5gxf5hBf5hRf6hBb6hRf7hRf9hxf9ihf9ixj9jhj9jxj9lBgdqnOKAAAAS3RSTlMAAQIEBggLDA0ZHiksLUNFRkhJTVZZam56g5GZnp+jpK2wx8jLzM/c3ufo6erq6+7x8/f4+fr7+/v8/Pz8/P39/f39/f3+/v7+/v7CXM3UAAAAlklEQVQI1wXBBQKCQAAEwAUDExS7we7EDkxMzm7F///CGYACLwyVohMAaEbrHtOHhawlaCBaf/vs5etW0gD20am69Ebbuj9gUdnXUtwlo5tN5AqIKv+CVqPBsxoTELU3T3K5PAp3AnEjL+NgkD23RLDP9sdrdlteoyELxCS16Q+Epo0vQCFye6lkdwqbKIACLyhKyQHgD0EjF43Hfk9tAAAAAElFTkSuQmCC'

last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=BCHEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 0 "$last" "$icon"
echo "---"
