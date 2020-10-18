#!/bin/bash
set -x 
url="$1"

[[ $url == "" ]] && echo Error! You need to give a url as the argument. && exit 1 
[[ $url != *"acm.org"* ]] && echo Error! The url needs to be from acm.org. && exit 1

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
(crontab -l 2>/dev/null; echo "0 * * * * $DIR/get_website_data.sh '$url'") | crontab -
