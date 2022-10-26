#/bin/bash
read get_string
arr=($get_string)
al=${#arr[@]}
let al="al-1"
while (($al >= 0)); do
    echo -n "${arr[al]}"
    echo -n " "
    let al="al - 1"
done
echo
exit 0
