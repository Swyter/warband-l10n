#!/bin/sh

echo "Updating translations from Transifex..."

# convert everything to Joomla INI format
luajit tx.lua convert

# push our latest strings to the web
# tx push -s -t -f --skip --no-interactive
# tx push -s -f --skip --no-interactive
# tx push -s -t -f --skip --no-interactive
# tx push -t -l sv --skip --no-interactive

# pull latest translations
"./tx-`uname -m`.elf" pull -a -f --skip --minimum-perc=0

# revert back to mab format
luajit tx.lua revert

echo "Done!"
