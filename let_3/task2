#/bin/bash
read string
stringarray=($string)
n=${#stringarray[@]}
    for ((i=0; i<n; i++)); do
        if ((${#stringarray[i]} > ${#stringarray[i+1]})); then
            if ((i%2==0)); then #even position word
                let i1="$i+1"
                temp=${stringarray[i]}
                stringarray[$i]=${stringarray[$i1]} #swap i with i+1
                stringarray[$i1]=$temp
            fi
        fi
        if ((${#stringarray[i]} < ${#stringarray[i+1]})); then
            if ((i%2==1)); then #odd position word
                let i1="$i+1"
                temp=${stringarray[i]}
                stringarray[$i]=${stringarray[$i1]} #swap i with i+1
                stringarray[$i1]=$temp
            fi  
        fi
    done
for ((i=0; i<n; i++)); do
    if  ((i%2==0)); then
        printf "${stringarray[i],,} " #lower case
    else
        printf "${stringarray[i]^^} " #upper case
    fi    
done
echo
