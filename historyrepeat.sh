input=$1
cp $1 $1.backup
while IFS= read -r var
do
  count_parents=$(git cat-file -p $var | grep -oc parent)
  if (($count_parents > 1)); then
       echo  "need to merge"
       git cherry-pick "$var" -m 1 --strategy-option theirs --keep-redundant-commits --allow-empty-message --allow-empty -x --no-commit
       git commit -a --allow-empty-message -m ''
  else
       git cherry-pick "$var" --strategy-option theirs --keep-redundant-commits --allow-empty-message --allow-empty -x --no-commit
       git commit -a --allow-empty-message -m ''
  fi
  sed -i.bak -e '1d' $1.backup
done < "$input"
