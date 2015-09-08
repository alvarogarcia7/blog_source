#!/bin/bash


if test "$1" = "push"; then

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


    regex=$(echo $2|tr -d "partial/")
    cd partial
    diff_file=$(ls -htp $regex*| grep -v "/"|head -2|grep diff)
    message_file=$(ls -htp $regex*|grep -v "/" | head -2|grep msg)
    cd -

    if [[ $# -eq 3 ]]; then
        # save.sh $operation $partial $to_file
        filename="$3"
    elif [[ $# -eq 2 ]]; then
        # save.sh $operation $partial
        filename="source/_posts/2015-09-01-self-study-in-september-2015.markdown"
    elif [[ $# -eq 1 ]]; then
        # save.sh $operation
        filename="source/_posts/2015-09-01-self-study-in-september-2015.markdown"
        diff_file=$(ls -htp partial|grep -v "/"|head -2|grep diff)
        message_file=$(ls -htp partial|grep -v "/" | head -2|grep msg)
    else
        echo "did not understand the amount of arguments"
    fi


    if [ -z $diff_file -o -z $message_file  ]; then
    	echo "could not apply this partial file"
    	exit 1
    fi

    message_file=partial/$message_file
    diff_file=partial/$diff_file


cat $diff_file >> $filename
git add $filename
git commit -F $message_file

rm -f $diff_file
rm -f $message_file

git add --all partial
git commit "delete partial files"

else

	echo "did not understand command $@"

fi
