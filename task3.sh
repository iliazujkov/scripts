#/bin/bash
read str
len_str=${#str}
let len_str="len_str-1"
read digit
let digit="digit %=27"
for (( num_i=$len_str; num_i >= 0; num_i-- )); do
	num_char=$(echo ${str:$num_i:1})
	dex=$(printf '%d\n' "'$num_char")
	if [ $dex -eq 0 ]; then
        echo -n " "
        continue
	fi
	if [ $dex -gt 64 ] && [ $dex -lt 91 ]; then
		let dex="dex+digit"
		if  (($dex>90)); then
			let dex="dex-26"
			fi
		let pos="num_i%2"
		if [ $pos == 1 ]; then
			dex=$(($dex+32))
			fi
	elif [ $dex -gt 47 ] && [ $dex -lt 58 ]; then
			dex=$((105-$dex))
	fi
	convert_to_ascii=$(printf "\x$(printf %x $dex)")
	echo -n $convert_to_ascii
done
echo
exit 0
