#!/bin/bash -x
echo Welcome to Flip Coin Simulation. This program displays the winner Heads or Tails

coincheck=$((RANDOM%2))

if [ $coincheck -eq 1 ]
then
	echo Heads
else
	echo Tails
fi
