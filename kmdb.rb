# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Film.destroy_all
Cast.destroy_all

# Generate models and tables, according to the domain model


# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.


#films 

new_film = Film.new
new_film.title = "Batman Begins"
new_film.year = "2005"
new_film.rating = "PG-13"
new_film.director = "Christopher Nolan"
new_film.save

new_film = Film.new
new_film.title = "The Dark Knight"
new_film.year = "2008"
new_film.rating = "PG-13"
new_film.director = "Christopher Nolan"
new_film.save

new_film = Film.new
new_film.title = "The Dark Knight Rises"
new_film.year = "2012"
new_film.rating = "PG-13"
new_film.director = "Christopher Nolan"
new_film.save

#casts

new_cast = Cast.new
new_cast.title = "Batman Begins"
new_cast.actor = "Christian Bale"
new_cast.character = "Bruce Wayne"
new_cast.save

new_cast = Cast.new
new_cast.title = "Batman Begins"
new_cast.actor = "Michael Caine"
new_cast.character = "Alfred"
new_cast.save

new_cast = Cast.new
new_cast.title = "Batman Begins"
new_cast.actor = "Liam Neeson"
new_cast.character = "Ra's Al Ghul"
new_cast.save

new_cast = Cast.new
new_cast.title = "Batman Begins"
new_cast.actor = "Katie Holmes"
new_cast.character = "Rachel Dawes"
new_cast.save

new_cast = Cast.new
new_cast.title = "Batman Begins"
new_cast.actor = "Gary Oldman"
new_cast.character = "Commissioner Gordon"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight"
new_cast.actor = "Christian Bale"
new_cast.character = "Bruce Wayne"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight"
new_cast.actor = "Heath Ledger"
new_cast.character = "Joker"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight"
new_cast.actor = "Aaron Eckhart"
new_cast.character = "Harvey Dent"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight"
new_cast.actor = "Michael Caine"
new_cast.character = "Alfred"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight"
new_cast.actor = "Maggie Gyllenhaal"
new_cast.character = "Rachel Dawes"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight Rises"
new_cast.actor = "Christian Bale"
new_cast.character = "Bruce Wayne"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight Rises"
new_cast.actor = "Gary Oldman"
new_cast.character = "Commissioner Gordon"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight Rises"
new_cast.actor = "Tom Hardy"
new_cast.character = "Bane"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight Rises"
new_cast.actor = "Joseph Gordon-Levitt"
new_cast.character = "John Blake"
new_cast.save

new_cast = Cast.new
new_cast.title = "The Dark Knight Rises"
new_cast.actor = "Anne Hathaway"
new_cast.character = "Selina Kyle"
new_cast.save



# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

films = Film.all

for film in films
    puts "#{film.title} #{film.year} #{film.rating} #{film.director}"
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

casts = Cast.all

for cast in casts
    puts "#{cast.title} #{cast.actor} #{cast.character}"
end


