#!/bin/bash

if [ $# -lt 2 ]; then
	echo "USAGE: "
	echo './cast-website-on-many-devices.sh WEBSITE_URL DEVICE_1 [DEVICE_2] ... [DEVICE_N]'
	echo
	echo "EXAMPLE"
	echo './cast-website-on-many-devices.sh https://google.com "Meeting room" "Open space"'
fi
SITE_URL=$1
shift

for DEVICE in "$@"
do
  echo "Attempting to cast $SITE_URL on $DEVICE"
  ./cast.sh -d "$DEVICE" cast_site $SITE_URL
done
