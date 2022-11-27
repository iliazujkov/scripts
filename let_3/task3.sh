#/bin/bash
read number
pos=0
N=${#number} #size of number
for ((i=0; i<N; i++)); do
    for ((j=1; j<N; j++)); do  
        if [ ${number:$j:1} -lt ${number:$i:1} ]; then #comparison of consecutive numbers
            for ((o=0; o<N; o++)); do
                if ((o == i)); then 
                    printf "${number:$j:1}" #printing min number
                    pos_j=$j #pos of min number
                else
                    if ((o == j)); then
                        printf "${number:$i:1}" #printing the replacement number
                        pos_i=$i #pos of replacing number
                    else
                        printf "${number:$o:1}" #printing the unchanging part of a number
                    fi
                fi
            done
            printf ", $pos_i"
            printf ", $pos_j"
            echo
            exit 0
        fi  
    done
done
