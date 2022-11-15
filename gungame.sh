#!/bin/bash

# This is shell scripting code for gungame.sh
# Title = TBA

enemy=$(( $RANDOM % 2 )) # creating an enemy with a random variable
echo "WELCOME TO GUNGAME!!"
sleep 1
echo "Your objective is to defeat the enemy and the boss"
sleep 1
echo "First enemy is here, choose your option wisely"
echo "Choose a number: 0 or 1"
 
read option

if [[ $option == 0 ]] || [[ $option == 1 ]]; then

	if [[ $enemy == $option ]]; then
		echo "*****You win, Enemy defeated*****"
		sleep 1
		echo "Boss is approaching! Prepare yourself for the Final Battle!!!"
		boss=$(( $RANDOM % 2 ))
		sleep 1
		echo "Choose a number again: 0 or 1"
		read option1
		

		if [[ $option1 == 0 ]] || [[ $option1 == 1 ]]; then
			if [[ $boss == $option1 ]]; then
			echo "*** YOU WIN!!! YOU DEFEATED THE BOSS AND SAVED THE WORLD! ***"
			else
			echo "YOU LOSE!! BOSS DEFEATED YOU!!!"
			fi
		else
			echo "0 or 1 only noob!! Play again from the beginning"
		fi
	else
		echo "YOU LOSE!!! ENEMY DEFEATED YOU!!! PLAY AGAIN!!!"	
	fi
else 
	echo "Noob! 0 or 1 only"
	
fi
