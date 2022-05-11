#!/bin/bash -x
echo Welcome to Flip Coin Simulation. This program displays the winner Heads or Tails

Heads=0
Tails=0

while [[ $Heads -lt 21 && $Tails -lt 21 ]]
do
coincheck=$((RANDOM%2))

if [ $coincheck -eq 1 ]
then
	Heads=$(($Heads+1))
else
	Tails=$(($Tails+1))
fi
done


if [[ $Heads == $Tails ]]
then
	echo Tie
elif [ $Heads == 21 ]
then
	echo Heads: $Heads
elif [ $Tails == 21 ]
then
	echo Tails: $Tails
fi
