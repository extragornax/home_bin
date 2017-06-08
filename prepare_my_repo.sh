#!/bin/bash
user="gaspard.witrand@epitech.eu"
stty -echo
read -p "Password: " passw; echo
token=$(echo -n "$passw" | shasum -a 512 | cut -d " " -f 1)
stty echo
blih -u "$user" -t "$token" repository create "$1" && blih -u "$user" -t "$token" repository setacl "$1" ramassage-tek r && blih -u "$user" -t "$token" repository  getacl "$1" && git clone git@git.epitech.eu:/"$user"/"$1"
