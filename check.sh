#!/bin/bash
file=".reviewRequire"

# Check .reviewRequire exists
if [ ! -f $file ];
then
   echo "$file does not exist."
   exit 1
fi

# Check .reviewRequire items are exist between commits/branches/tags
tmpfile=$(mktemp)
while IFS= read -r line
do
    git diff --name-only $1 $2 | grep "$line" | tee "$tmpfile"
done <"$file"

# If tt doesn't exist, then exit
if [ $? = 1 ]; then 
    exit 1
fi

# If exists, ask to show diff or not
echo "\nChanges detected! Show diff?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) while IFS= read -r line
              do
                git diff $1 $2 "$line"
              done <"$tmpfile";break;;
        No) break;;
    esac
done
rm "$tmpfile"
