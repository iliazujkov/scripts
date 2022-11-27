#/bin/bash
read str1
read str2
str3=$str1$str2 #combine strings
len_str3=${#str3}
sort_str=$(echo $str3 | grep -o . | sort | tr -d "\n") #sort string
new_string=${sort_str:0:1} #first letter of string
for ((i=1; i<$len_str3; i++)); do
	num_char=$(echo ${sort_str:$i-1:1})
    num_char_next=$(echo ${sort_str:$i:1})
    if [[ "$num_char" != "$num_char_next" ]]; then #check for duplicate letters
        new_string=$new_string${sort_str:$i:1}
    fi
done
echo $new_string
