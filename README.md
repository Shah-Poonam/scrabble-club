# Scrabble Club

Scrabble Club is a website that allows participants around the world to play scrabble. It will allow member's to register themselves and play a game between 2 members. And It will display the gaming information like... Who won the game and their high score etc.. It will display the Leader board of top performing players.

## Core Features

### Leader Board

* It will display the top-performing players who have played at least 10 matches of the scrabble club.

### Game

* The game will be played between 2 members
* Create the game and add the basic data like Game Name, Location, Game Date
* And also add the participants of the game and their score
* Display the list of games with the winner's name and their highest score
* Added functionality to delete the game

### Member

* Add the Members with the basic details
* Edit that details of the members
* Display the list of members information
* Display the particular member's information with their high score, average score, Number of wins, Number of losses, when the game is played and on which date, and the name of the opponent player.

## Prerequisites
  * Github
  * Ruby 2.6.5
  * Rails 6.0.4
  * postgresql
  * Yarn

## Getting Started

1.  Clone this rails project into your local machine:

    > `git clone https://github.com/Shah-Poonam/scrabble-club.git`

2.  CD into your new local repository:

    > `cd scrabble-club`

3.  Install Gems:

    > `bundle install`

4.  Install Javascript dependencies:

    > `yarn install`

5.  Create database.yml file

    ##### Copy the example database.yml file and edit the database configuration as required.

      > cp `config/database.yml.example config/database.yml`

6.  Create and setup the database

    > `rails db:create db:migrate db:seed`

7.  To run the application:

    > Start the server with `rails s`
    > Navigate to http://localhost:3000/ to see your local version of Scrabble Club.

8.  Celebrate. 🎉
