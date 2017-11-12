input=$1
while IFS= read -r var
do
  git cherry-pick "$var" --strategy-option theirs --keep-redundant-commits --allow-empty-message --allow-empty -x --no-commit
  git commit -a --allow-empty-message -m ''
done < "$input"
