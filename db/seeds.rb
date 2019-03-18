# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# added this line to test my commit
latest_movies = Tmdb::Movie.latest



User.create!(name:"Jarrian", username:"JearBear", location:"NYC",
  age:24, bio:"Lf > Chills", password: "jarrian")

  User.create!(name:"Ben", username:"Benny", location:"Jersey",
    age:30, bio:"bored", password: "jarrian")
