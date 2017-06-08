#!/bin/sh

echo "Fetch in progress"
git fetch
echo "Fetch done"
sleep 5
sh ~/bin/fetch_it.sh &
