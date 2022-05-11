#!/bin/bash -x
echo Welcome to Flip Coin Simulation. This program displays the winner Heads or Tails
read -p "Enter the number of time wants to flip the coin: " num

Heads=0
Tails=0

for ((i=0;i<$num;i++))
do
coincheck=$((RANDOM%2))

if [ $coincheck -eq 1 ]
then
	Heads=$(($Heads+1))
else
	Tails=$(($Tails+1))
fi
done

echo Heads: $Heads
echo Tails: $Tails
