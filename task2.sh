#/bin/bash
sum=0
addLetters() {
for letter in $*; do
	dex=$(printf '%d\n' "'$letter")
	let new_code="dex-96"
	let sum="sum + new_code"
	done
let sum="sum%=26"
	if [[ $dex -eq 0 ]]; then
        	echo "z"
        else
		let new_sum="sum+96"
		convert_to_ascii=$(printf "\x$(printf %x $new_sum)")
		echo $convert_to_ascii
	fi
}
addLetters $*
exit 0
