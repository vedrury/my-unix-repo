function guessinggame.sh {


files=$(ls | wc -l)


echo "Welcome to the Guessing Game! Guess how many files are in the current directory."


read response

while [[ $response -ne $files ]]
do
	if [[ $response -lt $files ]]
	then
	echo "Sorry, that guess is too low. Try again!"
	
	elif [[ $response -gt $files ]]
	then
	echo "Sorry, that guess is too high. Try again!"
	fi

read response
done


if [[ $response -eq $files ]]
        then
        echo "Congratulations! That is the correct number of files. :)"
fi
}
guessinggame.sh

