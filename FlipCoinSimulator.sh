#!/bin/bash/ -x

isHead=1
isTail=0
HHCount=0
TTCount=0
HTCount=0
THCount=0
HCount=0
TCount=0
declare -A dicResult
function flipCoin(){
  echo $1
}
read -p "Enter how many times you want to flip coin :" trials
for (( i=1; i<=$trials; i++ ))
do
    coinOne="$( flipCoin $((RANDOM%2)) )"
    coinTwo="$( flipCoin $((RANDOM%2)) )"
    if [[ $coinOne == $isHead ]] && [[ $coinTwo == $isHead ]]
    then 
         #coin_dictionary[$counter]="Head"
         HHCount=$(( HHCount + 1))
    elif [[ $coinOne == $isTail ]] && [[ $coinTwo == $isTail ]]
    then
         HHCount=$(( TTCount + 1  ))
    elif [[ $coinOne == $isHead ]] && [[ $coinTwo == $isTail ]]
    then
         HTCount=$(( HTCount + 1))
    else
         THCount=$(( THCount + 1 ))
    fi
done

dicResult["HH"]=$HHCount
dicResult["TT"]=$TTCount
dicResult["HT"]=$HTCount
dicResult["TH"]=$THCount

dicResult=${dicResult[@]}


HHPercentage=$(($HHCount*100 / $trials))
TTPercentage=$(($TTCount*100 / $trials))
HTPercentage=$(($HTCount*100 / $trials ))
THPercentage=$(($THCount*100 / $trials))
