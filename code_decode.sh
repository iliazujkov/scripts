#/bin/bash
function code {
for ((i=0; i<N; i++)); do
    if ((${number:$i:1}==0)); then
    printf "10"
    elif ((${number:$i:1}==1)); then
    printf "11"
    else
    new=${number:$i:1}
    while ((new>1)); do #degree of number
        let new="$new/2"
        printf "0"
    done
    printf "1"
    printf "$(echo "obase=2;${number:$i:1}" | bc)" #convert to binary
    fi
done
return 
}
function decode {
    i=$1
    if  ((i>=N)); then #end of number condition
    echo
    exit 0
    else
    size=0
    a=${number:$i:1}
    while ((a!="1")); do #determining the number of bits
            let i="$i+1"
            let size="$size+1"
            a=${number:$i:1}
    done
    let i="$i+1" #position shift by 1
    let size="$size+1"
    for ((j=0; j<size; j++)); do #number reading
        chislo=$chislo${number:$i:1}
        let i="$i+1"
    done
    echo -n $((2#$chislo)) #convert to dec
    chislo=""
    decode $i #recursive for each number
    fi
    return
}
read number
N=${#number} #size of number
if (($1=="1")); then
code
fi
if (($1=="2")); then
decode 0
else
printf "ERROR OPERATION"
fi
echo
exit 0 
