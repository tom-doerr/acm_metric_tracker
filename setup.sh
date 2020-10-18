#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
(crontab -l 2>/dev/null; echo "0 * * * * $DIR/get_website_data.sh") | crontab -
