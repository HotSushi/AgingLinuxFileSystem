input=$1
cp $1 $1.backup
while IFS= read -r var
do
  git cherry-pick "$var" --strategy-option theirs --keep-redundant-commits --allow-empty-message --allow-empty -x --no-commit
  git commit -a --allow-empty-message -m ''
  sed -i.bak -e '1d' $1.backup
done < "$input"
