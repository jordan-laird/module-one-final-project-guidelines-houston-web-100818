# MODULE 1 - FINAL PROJECT

APP NAME:   `FilmGrab`

## Objectives

Provides film information to users. Such information includes: current movies titles, ratings, ticket availability

## Overview

In this database, we are dealing with a many-to-many relationship: a movie has many users, and each user has many movies. A ticket belongs to a movie and a user. In this way, a movie has many users through their tickets. A user may search for a movie in a variety of ways.

We used Ruby to send web requests to the MoviGlu API and received a collection of data, structured as a nested hash. [MoviGlu API](https://api-gate2.movieglu.com/cinemaShowTimes/?date=2018-10-24&cinema_id=6968).

We parsed the hash using iterations and other methods, in order to `puts` out accurate, formatted and relevant movie info for our user. Each hash represents a movie curently showing at Edwards Houston Marq*E Stadium 23 & IMAX"** in Houston, TX.

### Understanding our Program

The `bin` directory has the *executable file* file - `run.rb` that a user will run from the command line to execute the program.

  - A user will run the program, see a welcome message from FilmGrab!, and then be prompted to enter their name.

  - The user will then be prompted to select available options
  user_options are:
        "AVAILABLE OPTIONS"
        [1] My Tickets
        [2] All movies
        [3] Find by rating
        [4] Exit
        

 - Our program will capture that input and use it to query the MovieGlu API for film info, `puts`-ing out to the terminal: all movies available, how to find them by rating and a user's tickets .

Eventually, the user can select a movie and purchase tickets by title, by rating or cancel to exit the application.


### `Summary`

FilmGrab built a command line application that welcomes a user and `puts` out a friendly greeting. We prompt the user for a name and if user doesn't exist, user id is created. If a user exists they recieve a welcome back message.
We defined the user_options and the return value is the captured user's input. FilmGrab created a method that will enable the user to purchase tickets by rating or by title

CONTRIBUTORS GUIDE:

Jordan Laird
Bilikis Orulebaja
Janet Orega



