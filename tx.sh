echo "Updating translations from Transifex..."
echo "--"

# convert everything to Joomla INI format
luajit tx.lua convert

# push our latest strings to the web
# tx push -s -t -f --skip --no-interactive
# tx push -s -f --skip --no-interactive
# tx push -s -t -f --skip --no-interactive
# tx push -t -l sv --skip --no-interactive

# pull latest translations -- haven't tested it on linux, maybe the executable is not on $PATH ???
tx pull -a -f --skip --minimum-perc=0 --mode=reviewer

# revert back to mab format
luajit tx.lua revert

echo "--"
echo "Done!"