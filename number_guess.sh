#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

echo "Enter your username:"
read username

username_avail=$($PSQL "SELECT username FROM users WHERE username='$username'")

games_played=$($PSQL "SELECT COUNT(*) FROM users
INNER JOIN games USING(user_id)
WHERE username='$username'")

best_game=$($PSQL "SELECT MIN(number_guesses) FROM users
INNER JOIN games USING(user_id)
WHERE username='$username'")

if [[ -z $username_avail ]]
then
  $PSQL "INSERT INTO users(username) VALUES('$username')" > /dev/null
  echo "Welcome, $username! It looks like this is your first time here."
else
  echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi

random_num=$((1 + RANDOM % 1000))
guess=0

echo "Guess the secret number between 1 and 1000:"

while read num
do
  if [[ ! $num =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    guess=$((guess + 1))

    if [[ $num -eq $random_num ]]
    then
      break
    elif [[ $num -gt $random_num ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
  fi
done

echo "You guessed it in $guess tries. The secret number was $random_num. Nice job!"

user_id=$($PSQL "SELECT user_id FROM users WHERE username='$username'")

$PSQL "INSERT INTO games(number_guesses, user_id)
VALUES($guess, $user_id)" > /dev/null
