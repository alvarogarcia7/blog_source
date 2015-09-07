#!/bin/bash


if test "$1" = "save"; then

timestamp=partial/$(date +%s)
diff_file=${timestamp}_diff.txt
message_file=${timestamp}_msg.txt

git diff --patch|grep ^+|grep -v +++|tr -d "^+" > $diff_file

git reset --hard

echo "$2" > $message_file

elif test "$1" = "apply"; then

filename="$2"

diff_file=partial/$(ls -htp partial|grep -v "/"|head -2|grep diff)
message_file=partial/$(ls -htp partial|grep -v "/" | head -2|grep msg)

cat $diff_file >> $filename
git add $filename
git commit -F $message_file

rm -f $diff_file
rm -f $message_file


else

	echo "did not understand command $@"

fi
