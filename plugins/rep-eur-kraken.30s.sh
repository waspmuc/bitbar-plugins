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
icon='iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAMAAABhq6zVAAAAnFBMVEUAAAAAAACAAIBVAFVVVVVmM01dLl1eKFFmJllmKVJkLlJeK1VgKFBiLVNjK1ViJ1VfKlNkKFViJ1NhKlNkKlRhKFVkKFRiJ1JiK1JkK1VjKlRgKVVkKVViKFRhK1NiKlRkKVNiK1ViKVVhKVVhKFNjK1ViKlRhKlNjKVViKVRhKFNjKFNiK1VjKlZjKVRiKVNiKlRiKVRjKlRiKVW8DjSMAAAANHRSTlMAAQIDAwoLExQZHB4gIiQnKzM0Nz0/QEFBQkNFRUZHSUpOUVdZWltcXV5fX2BiamttcIaK9afrAAAAAGxJREFUeAFjAAFGBgYmIAVlCgjCeMwMLEbGLECKAaxASFtLmIERoopdUUxegpuBBSwhqi4toioOFAZCDg0lRgYVTU6QFIOeoQIfr6yBAdg0ZR0eGUUubTWILbxyuvpS/CAmCLBJyrBCXcAEpwCkyAX1+rZmYwAAAABJRU5ErkJggg=='

last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=REPEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 0 "$last" "$icon"
echo "---"

