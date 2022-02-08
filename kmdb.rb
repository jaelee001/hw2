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
Movie.destroy_all
Person.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

# Inserts data into People table
values = { name: "Christopher Nolan"}
person = Person.new(values)
person.save

values = { name: "Christian Bale"}
person = Person.new(values)
person.save

values = { name: "Michael Caine"}
person = Person.new(values)
person.save

values = { name: "Liam Neeson"}
person = Person.new(values)
person.save

values = { name: "Katie Holmes"}
person = Person.new(values)
person.save

values = { name: "Gary Oldman"}
person = Person.new(values)
person.save

values = { name: "Heath Ledger"}
person = Person.new(values)
person.save

values = { name: "Aaron Eckhart"}
person = Person.new(values)
person.save

values = { name: "Maggie Gyllenhaal"}
person = Person.new(values)
person.save

values = { name: "Tom Hardy"}
person = Person.new(values)
person.save

values = { name: "Joseph Gordon-Levitt"}
person = Person.new(values)
person.save

values = { name: "Anne Hathaway"}
person = Person.new(values)
person.save

director = Person.where({ name: "Christopher Nolan"})[0]

# Inserts data into Movies table
values = { title: "Batman Begins", year_released: "2005", rated: "PG-13", person_id: director.id}
movie = Movie.new(values)
movie.save

values = { title: "The Dark Knight", year_released: "2008", rated: "PG-13", person_id: director.id}
movie = Movie.new(values)
movie.save

values = { title: "The Dark Knight Rises", year_released: "2012", rated: "PG-13", person_id: director.id}
movie = Movie.new(values)
movie.save

# Inserts data into Roles table
# Batman Begins
values = {movie_id: Movie.where({ title: "Batman Begins"})[0].id, person_id: Person.where({ name: "Christian Bale"})[0].id, character_name: "Bruce Wayne"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "Batman Begins"})[0].id, person_id: Person.where({ name: "Michael Caine"})[0].id, character_name: "Alfred"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "Batman Begins"})[0].id, person_id: Person.where({ name: "Liam Neeson"})[0].id, character_name: "Ra's Al Ghul"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "Batman Begins"})[0].id, person_id: Person.where({ name: "Katie Holmes"})[0].id, character_name: "Rachel Dawes"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "Batman Begins"})[0].id, person_id: Person.where({ name: "Gary Oldman"})[0].id, character_name: "Commissioner Gordon"}
role = Role.new(values)
role.save

# The Dark Knight
values = {movie_id: Movie.where({ title: "The Dark Knight"})[0].id, person_id: Person.where({ name: "Christian Bale"})[0].id, character_name: "Bruce Wayne"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "The Dark Knight"})[0].id, person_id: Person.where({ name: "Heath Ledger"})[0].id, character_name: "Joker"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "The Dark Knight"})[0].id, person_id: Person.where({ name: "Aaron Eckhart"})[0].id, character_name: "Harvey Dent"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "The Dark Knight"})[0].id, person_id: Person.where({ name: "Michael Caine"})[0].id, character_name: "Alfred"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "The Dark Knight"})[0].id, person_id: Person.where({ name: "Maggie Gyllenhaal"})[0].id, character_name: "Rachel Dawes"}
role = Role.new(values)
role.save

# The Dark Knight Rises
values = {movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id, person_id: Person.where({ name: "Christian Bale"})[0].id, character_name: "Bruce Wayne"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id, person_id: Person.where({ name: "Gary Oldman"})[0].id, character_name: "Commissioner Gordon"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id, person_id: Person.where({ name: "Tom Hardy"})[0].id, character_name: "Bane"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id, person_id: Person.where({ name: "Joseph Gordon-Levitt"})[0].id, character_name: "John Blake"}
role = Role.new(values)
role.save

values = {movie_id: Movie.where({ title: "The Dark Knight Rises"})[0].id, person_id: Person.where({ name: "Anne Hathaway"})[0].id, character_name: "Selina Kyle"}
role = Role.new(values)
role.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!
movies = Movie.all
for movie in movies
    puts "#{movie.title} #{movie.year_released} #{movie.rated} #{movie.person_id}"
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
