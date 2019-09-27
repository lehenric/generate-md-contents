#!/usr/bin/bash


list=$(grep '^#' $1)
# changes last '#' for dash and first ones to spaces to keep indentation of MD, then wraps names with []
dashes=$(echo "$list" |  sed -E 's/# /- /g;s/#/ /g;s/- /- [/;s/$/]/')
# performs lowercasification and prepares linkifiable form of header // TODO might not work with non ASCII characters
links=$(echo "$list" | tr '[:upper:]' '[:lower:]' | sed 's/# /#/g'  | tr -s '#' | tr ' ' '-' | sed 's/[^-a-zA-Z#]//g;s/$/)/')
paste -d '(' <(echo "$dashes") <(echo "$links")
