# MODULE 1 - FINAL PROJECT

APP NAME:   `FilmGrab`

## Objectives

Provides film information to users. Such information includes: cinema show times, ratings, movie titles, tickets

## Overview

We used Ruby to send web requests to the MoviGlu API and received a collection of data, structured as a nested hash. [MoviGlu API](https://api-gate2.movieglu.com/cinemaShowTimes/?date=2018-10-24&cinema_id=6968).

We parsed the hash using iterations and other methods, in order to `puts` out accurate, formatted and relevant movie info for our user. Each hash represents a movie curently showing at Edwards Houston Marq*E Stadium 23 & IMAX"** in Houston, TX.

### Understanding our Program

The `bin` directory has the *executable file* file - `run.rb` that a user will run from the command line to execute the program.

  - A user will run the program, see a welcome message from FilmGrab!, and then be prompted to enter their name.

  - The user will then be prompted to select available options
  user_options are:
        "AVAILABLE OPTIONS"
        "[1] My Tickets"
        "[2] Today's Movies"
        "[3] Movie Times"
        "[4] Select Movie Rating"
        puts "----------------------"

   - Our program will capture that input and use it to query the MovieGlu API for film info, `puts`-ing out to the terminal, the info about the films showtime, film availability and ticket info.

Eventually, the user can select a movie and purchase tickets or cancel


### `lib/interface.rb`

Surmarry: We defined a `welcome` method that `puts` out a friendly greeting. Then, define the `get_name` method to ask the user for name and if user doesn't exist, user id created. If a user exists they recieve a welcome bak message. 
<!-- We then defined the user_options and the return value of this method is the captured user's input. #we then created a method that will enable the user to purchase tickets -->

CONTRIBUTORS GUIDE:

Jordan Laird
Bilikis Orulebaja
Janet Orega


`Make sure to create a good README.md with a short description, install instructions, a contributors guide and a link to the license for your code`
