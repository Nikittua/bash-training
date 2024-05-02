#!/bin/bash

echo -n "Enter URL: "
read URL
wget -O - -q $URL | grep -Eo "https?://\S+?\"" > links.txt

