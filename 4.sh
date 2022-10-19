#!/bin/bash
IFS=$'\n'
N=$1
a=N/2
if ((N%2 == 0))
then
	for ((i=0; i<N; i++))
	do
		for ((j=0; j<N; j++))
		do
			if ((i == a && j==N-1))
                        then
                        printf "*"
                        fi
			if ((i <= a))
			then
				if ((j >= a - i+1 && j <= a + i))
				then
				printf "*"
				else
				printf " "
				fi
			else
				if ((j >= a + i - N + 1 && j <= a - i + N ))
				then
				printf "*"
				else
				printf " "
				fi
			fi
		done
		printf "\n"
	done
elif ((N%2 != 0))
then
	for ((i=0; i<N; i++))
        do
                for ((j=0; j<N; j++))
                do
                        if ((i <= a))
                        then
                                if ((j >= a - i && j <= a + i))
                                then
                                printf "*"
                                else
                                printf " "
                                fi
                        else
                                if ((j >= a + i - N + 1 && j <= a - i + N - 1 ))
                                then
                                printf "*"
                                else
                                printf " "
                                fi
			fi
		done
		printf "\n"
	done
fi
