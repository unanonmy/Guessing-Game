#!/bin/bash
function guess {
echo -n  "Guess,the number of files in this current directory:"
read n
if [[ $n =~ [^0-9] ]]
then
    echo -n  "Please only enter the numerial.value :"
    read n
fi

}
c=$(ls -1|wc -l)
while [[ $c -ne $n ]]
do
  guess 
  if [[ $n -gt $c ]]
  then
      echo "entered too high"
  elif [[ $n -lt $c ]]
  then
      echo "enterd too low"
  else
      echo "......Congrats!! You have guessed correctly...."
  fi
done
path=$PWD
cd ~
if [[ -e .bash_profile  ]]
then
    echo "export PATH=~$path:$PATH" >> .bash_profile
    source ~./bash_profile
fi
