#!/bin/bash

# Link to this from /etc/cron.daily or crontab -e
# It will blink the blink(1) USB RGB LED by ThingM
#
# Please ensure blink1-tool is available in PATH
#
# Krishna Kumar krish.kumar@gmail.com
#

GIT_REPO_PATH="/Users/krishna/master/Bonfire"

TEMP=$(/usr/bin/mktemp -t tmp.git)
git --git-dir $GIT_REPO_PATH"/.git" --work-tree $GIT_REPO_PATH ls-files -m -o --exclude-standard > ${TEMP}

if [ $? != 128 ] && [ "`tail -1 ${TEMP}`" != "" ]
    then
 		# If the exit code isn't 128 (not a git repo) and there's nothing to commit, 
        # blink!
        blink1-tool --quiet --glimmer=10 &
    fi
    rm ${TEMP}


