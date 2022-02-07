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
Person.destroy_all

# Generate models and tables, according to the domain model


# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.

#people

person_cn = Person.new
person_cn.name = "Christopher Nolan"
person_cn.save

person_cb = Person.new
person_cb.name = "Christian Bale"
person_cb.save

person_mc = Person.new
person_mc.name = "Michael Caine"
person_mc.save

person_ln = Person.new
person_ln.name = "Liam Neeson"
person_ln.save

person_kh = Person.new
person_kh.name = "Katie Holmes"
person_kh.save

person_go = Person.new
person_go.name = "Gary Oldman"
person_go.save

person_hl = Person.new
person_hl.name = "Heath Ledger"
person_hl.save

person_ae = Person.new
person_ae.name = "Aaron Eckhart"
person_ae.save

person_mg = Person.new
person_mg.name = "Maggie Gyllenhaal"
person_mg.save

person_th = Person.new
person_th.name = "Tom Hardy"
person_th.save

person_jgl = Person.new
person_jgl.name = "Joseph Gordon-Levitt"
person_jgl.save

person_ah = Person.new
person_ah.name = "Anne Hathaway"
person_ah.save

#films 

film_bb = Film.new
film_bb.title = "Batman Begins"
film_bb.year = "2005"
film_bb.rating = "PG-13"
film_bb.director_id = person_cn.id
film_bb.save

film_tdk = Film.new
film_tdk.title = "The Dark Knight"
film_tdk.year = "2008"
film_tdk.rating = "PG-13"
film_tdk.director_id = person_cn.id
film_tdk.save

film_tdkr = Film.new
film_tdkr.title = "The Dark Knight Rises"
film_tdkr.year = "2012"
film_tdkr.rating = "PG-13"
film_tdkr.director_id = person_cn.id
film_tdkr.save

#casts

cast_bw_bb = Cast.new
cast_bw_bb.title = film_bb.id
cast_bw_bb.actor_id = person_cb.id
cast_bw_bb.character = "Bruce Wayne"
cast_bw_bb.save

cast_a_bb = Cast.new
cast_a_bb.title = film_bb.id
cast_a_bb.actor_id = person_mc.id
cast_a_bb.character = "Alfred"
cast_a_bb.save

cast_rag_bb = Cast.new
cast_rag_bb.title = film_bb.id
cast_rag_bb.actor_id = person_ln.id
cast_rag_bb.character = "Ra's Al Ghul"
cast_rag_bb.save

cast_rd_bb = Cast.new
cast_rd_bb.title = film_bb.id
cast_rd_bb.actor_id = person_kh.id
cast_rd_bb.character = "Rachel Dawes"
cast_rd_bb.save

cast_cg_bb = Cast.new
cast_cg_bb.title = film_bb.id
cast_cg_bb.actor_id = person_go.id
cast_cg_bb.character = "Commissioner Gordon"
cast_cg_bb.save

cast_bw_tdk = Cast.new
cast_bw_tdk.title = film_tdk.id
cast_bw_tdk.actor_id = person_cb.id
cast_bw_tdk.character = "Bruce Wayne"
cast_bw_tdk.save

cast_j_tdk = Cast.new
cast_j_tdk.title = film_tdk.id
cast_j_tdk.actor_id = person_hl.id
cast_j_tdk.character = "Joker"
cast_j_tdk.save

cast_hd_tdk = Cast.new
cast_hd_tdk.title = film_tdk.id
cast_hd_tdk.actor_id = person_ae.id
cast_hd_tdk.character = "Harvey Dent"
cast_hd_tdk.save

cast_a_tdk = Cast.new
cast_a_tdk.title = film_tdk.id
cast_a_tdk.actor_id = person_mc.id
cast_a_tdk.character = "Alfred"
cast_a_tdk.save

cast_rd_tdk = Cast.new
cast_rd_tdk.title = film_tdk.id
cast_rd_tdk.actor_id = person_mg.id
cast_rd_tdk.character = "Rachel Dawes"
cast_rd_tdk.save

cast_bw_tdkr = Cast.new
cast_bw_tdkr.title = film_tdkr.id
cast_bw_tdkr.actor_id = person_cb.id
cast_bw_tdkr.character = "Bruce Wayne"
cast_bw_tdkr.save

cast_cg_tdkr = Cast.new
cast_cg_tdkr.title = film_tdkr.id
cast_cg_tdkr.actor_id = person_go.id
cast_cg_tdkr.character = "Commissioner Gordon"
cast_cg_tdkr.save

cast_th_tdkr = Cast.new
cast_th_tdkr.title = film_tdkr.id
cast_th_tdkr.actor_id = person_th.id
cast_th_tdkr.character = "Bane"
cast_th_tdkr.save

cast_jb_tdkr = Cast.new
cast_jb_tdkr.title = film_tdkr.id
cast_jb_tdkr.actor_id = person_jgl.id
cast_jb_tdkr.character = "John Blake"
cast_jb_tdkr.save

cast_sk_tdkr = Cast.new
cast_sk_tdkr.title = film_tdkr.id
cast_sk_tdkr.actor_id = person_ah.id
cast_sk_tdkr.character = "Selina Kyle"
cast_sk_tdkr.save



# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

films = Film.all

for film in films
    director = Person.where({id: film.director_id})[0]
    puts "#{film.title} #{film.year} #{film.rating} #{director.name}"
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
    film_name = Film.where({id: cast.title})[0]
    actor = Person.where({id: cast.actor_id})[0]
    puts "#{film_name.title} #{actor.name} #{cast.character}"
end


