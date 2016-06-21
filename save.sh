#!/bin/bash

set -e

########################### config ##########################################

filename="source/_posts/2016-06-01-self-study.markdown"

#############################################################################


if test "$1" = "save"; then

	echo "there were $(ls -lah partial|wc -l) files"

	timestamp=partial/$(date +%s)
	diff_file=${timestamp}_diff.txt
	message_file=${timestamp}_msg.txt

	git diff --patch|grep ^+|grep -v +++|tr -d "^+" > $diff_file

	git reset --hard

	echo "$2" > $message_file

	git add --all partial

	git commit -m "add partial: $2"

elif test "$1" = "pop"; then

	if [[ $# -eq 1 ]]; then
		day=$(date "+%Y-%m-%d")
	elif [[ $# -eq 2 ]]; then
		day=$2
	else
		echo "did not understand the amount of arguments"
		exit 1
	fi
	

	diff_file=$(ls partial|sort|grep -v "/"|head -2|grep diff)
	message_file=$(ls partial|sort|grep -v "/" | head -2|grep msg)
	datestamp="$day $(date "+%H:%M:%S")"

	if [ -z $diff_file -o -z $message_file  ]; then
		echo "could not apply this partial file"
		exit 1
	fi

	message_file=partial/$message_file
	diff_file=partial/$diff_file


	cat $diff_file >> $filename
	git add $filename

	commit_message=$(cat $message_file)

	rm -f $diff_file
	rm -f $message_file
	git add --all -- partial


	git commit -m "$commit_message" --date="$datestamp"

else

    echo "did not understand command $@"

fi
