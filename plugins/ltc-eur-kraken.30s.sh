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
ICON14="iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAMAAAAolt3jAAAAflBMVEUAAAC/v7/CwsK5ubm+vr6/v7+9vb2+vr6+vr6/v7+9vb2+vr69vb2+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6/v7/AwMDBwcHDw8PHx8fJycnNzc3Ozs7Pz8/Z2dnf39/k5OTq6urs7Ozu7u7v7+/09PT7+/v9/f3////ngSNdAAAAFXRSTlMAFBUWUlRVgYKDhM3Oz9Dw8fLz9P7FJ1F0AAAAeElEQVQIHQXBSVIDMRAAMLnbHh+oEP7/ylBwIF7GSAXZ8/LeY1O4PipYv1O6PhOIPu/MR9IefVByRK9oLQ7aFRXSrFCjojQ9oNVD+Yr7e8OJRUw7WgtWXeyqPZ0Xs45V/RXc2xhFexbAea10z0wwfpaCuLJ7r3H4B+2gLmQqoVheAAAAAElFTkSuQmCC"

ICON13="iVBORw0KGgoAAAANSUhEUgAAAA0AAAANCAMAAABFNRROAAAAgVBMVEUAAAC/v7+/v7+9vb2+vr6/v7+8vLy9vb2/v7++vr6/v7++vr6+vr6+vr69vb2+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6/v7/CwsLExMTFxcXJycnMzMzNzc3Pz8/T09PW1tbh4eHn5+fu7u7w8PDx8fH4+Pj6+vr7+/v///9dYPglAAAAF3RSTlMABDg6Ozw9PpOVl6SlpqeoqePk5fj5/lCXE+AAAABqSURBVAgdBcEBjsIgEADAYYEixur/n6kxqW2hdzMJSy8xx3aSpL4Cn99fdl8BbY7cXnis6aTt0aE4oEdGzdcCNYJorgERF7U4Dpi5Vtc9WVoMW/neUuxwsif9CfD+ZXM24L1LKL2UcW6Tf8cFJG6gKPueAAAAAElFTkSuQmCC"

ICON12="iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAMAAABhq6zVAAAAb1BMVEUAAACqqqq2tra9vb29vb29vb2+vr6/v7++vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6/v7/AwMDCwsLGxsbKysrMzMzQ0NDU1NTX19fY2NjZ2dnd3d3o6Oju7u7y8vL09PT29vb7+/v+/v7///8mJS33AAAAEHRSTlMABgcbbG1uxsfIyc/Q8fP0fRtnlgAAAGBJREFUCB0FwUEOwjAMADA3SSeGkPj/M7mgsa4ddiMqN+c1lyb3AuOYGc+i55Ixo4p67+gRhW41VBRKD2yF17Y+C3dm8pitx3TGIMbde3G12DtgfPNekWAcq9GyNr85b392QCB7zCQ+DQAAAABJRU5ErkJggg=="

last=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=LTCEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)
printf "%.*f | $FONT image=%s\n" 0 "$last" "$ICON12"
echo "---"
