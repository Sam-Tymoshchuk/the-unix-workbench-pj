#!/usr/bin/env bash
# Guessing game

echo "Who many files are in the current directory?"
function guess {
 check=0	# create variable to control while loop 
 while [[ $check -ne 1 ]]	# start wile loop just because it is requested by assignment 
 do				
  read a			# read an input from a user and store it to variable a
  q=$(ls -p | grep -v / | wc -l)	# evaluate if input is matching the amount of files in the directory
  if [[ $q -ne $a ]]			# if not equal the provides a hint and start our function again
  then 
   [[ $q -gt $a ]] && echo "Too low" || echo "Too high"	# here we provide a hint
   guess				# here we start a function again (recursion)
  else 
   echo "you are right"			# congrats the user
   check=1				# set control variable of loop to 1, in order to exit the loop
  fi
 done
}

guess		# start our guessing game
