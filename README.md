# fcc-number-guess-game

🎯 *Number Guessing Game Database Project*

A Bash and PostgreSQL project built as part of the freeCodeCamp Relational Database Certification.

This project is a command-line number guessing game where users try to guess a randomly generated number between 1 and 1000. User statistics such as games played and best game scores are stored in a PostgreSQL database.

---

## 🚀 Features

- Random number guessing game
- User login system with usernames
- Stores game history in PostgreSQL
- Tracks total games played
- Tracks best game performance
- Input validation for integers
- Interactive Bash scripting
- Persistent database storage

---

## 🛠️ Technologies Used

- PostgreSQL
- SQL
- Bash Scripting
- Linux Terminal
- Git
- GitHub

---

## 🗂️ Database Structure

The database contains the following tables:

| Table | Description |
|---|---|
| users | Stores player usernames |
| games | Stores game statistics and guesses |

---

## 🔗 Entity Relationships

Users → Games

One user can play many games
Each game belongs to one user

---
## 📊 Database Features

The project uses:

- Primary Keys
- Foreign Keys
- SERIAL auto-increment IDs
- UNIQUE constraints
- NOT NULL constraints
- Table relationships using user_id

---

## 🎮 Game Flow
- User enters a username
- Existing users receive their statistics
- New users are added to the database
- A random number is generated
- User keeps guessing until correct
- Game results are saved automatically

---

## 📚 Concepts Practiced

This project helped practice:

- Bash scripting
- PostgreSQL queries
- Database relationships
- SQL joins
- User input validation
- Loops and conditionals
- Command-line applications
- Database integration with Bash

---

## 🧠 Example Gameplay

```text
Enter your username:
Poulami

Welcome back, Poulami! You have played 5 games, and your best game took 3 guesses.

Guess the secret number between 1 and 1000:
500
It's lower than that, guess again:
250
It's higher than that, guess again:
375
You guessed it in 3 tries. The secret number was 375. Nice job!

🎯 Completed as part of the freeCodeCamp Relational Database Certification.
