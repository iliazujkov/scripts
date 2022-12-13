#!/bin/bash
read number
N=${#number} #size of number
printf "["
val_min=$number
pos_i=0
pos_j=0
for ((i=0; i<N; i++)); do
    for ((j=0; j<N; j++)); do
        if (( i == j )); then
            continue
        fi
        number2=""  #for find min number
        for ((o=0; o<N; o++)); do
            if ((o == i)); then 
                if (( o != N-1 )); then
                    number2=$number2${number:$j:1}         
                    number2=$number2${number:$o:1} 
                else
                    number2=$number2${number:$o:1} 
                    number2=$number2${number:$j:1} 
                fi
            else
                if ((o == j)); then #skip min value
                    continue
                else
                    number2=$number2${number:$o:1}
                fi
            fi
        done
        if [ $number2 -le $val_min ]; then 
            val_min=$number2
            pos_j=$j
            pos_i=$i
        fi
        number2="" 
    done
done
printf "$val_min"
if (($number == $val_min)); then #for const number
echo "]"
exit 0
fi
printf ", $pos_i"
printf ", $pos_j"
echo "]"
exit 0
