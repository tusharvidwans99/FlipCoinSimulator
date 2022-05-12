#!/bin/bash -x
echo Welcome to Flip Coin Simulation. This program displays the winner Heads or Tails

Heads=0
Tails=0

function checkcoin(){
coincheck=$((RANDOM%2))

if [ $coincheck -eq 1 ]
then
	Heads=$(($Heads+1))
else
	Tails=$(($Tails+1))
fi

}


while [[ $Heads -lt 21 && $Tails -lt 21 ]]
do
checkcoin
done


if [[ $Heads == $Tails ]]
then
	echo This is Tie. Continuing the game till the we get difference of 2 Minimum.
	while [[ $(($Heads-$Tails)) -ge 2 || $(( $Tails-$Heads )) -ge 2 ]]
	do
		checkcoin
	done
elif [ $Heads -gt $Tails ]
then
	echo Heads won by: $Heads
elif [ $Tails -gt $Heads ]
then
	echo Tails won by: $Tails
fi
