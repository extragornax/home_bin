#!/bin/sh

function random_colour {
	local bold=$(( $RANDOM % 2 ))
	local code=$(( 30 + $RANDOM % 8 ))
	printf "%d;%d\n" $bold $code
}

sentence="Yolo  "
for (( i=0; i<${#sentence}; i++ )); do
	printf "\e[%sm%c" "$(random_colour)" "${sentence:i:1}"
done
sh yolo.sh
