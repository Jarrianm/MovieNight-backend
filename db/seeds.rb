# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# added this line to test my commit
# Movie.create!(Tmdb::Movie.find('batman')
upcoming = Tmdb::Movie.upcoming
now_playing = Tmdb::Movie.now_playing
top_rated = Tmdb::Movie.top_rated
popular = Tmdb::Movie.popular

upcoming.results.each do |movie|
	Movie.create(
		title: movie.title,
    plot: movie.overview,
    poster_img: movie.poster_path,
    backdrop_path: movie.backdrop_path,
    release_date: movie.release_date,
    category: "upcoming"
	)
end

now_playing.results.each do |movie|
	Movie.create(
		title: movie.title,
    plot: movie.overview,
    poster_img: movie.poster_path,
    backdrop_path: movie.backdrop_path,
    release_date: movie.release_date,
    category: "now_playing"

	)
end

 top_rated.results.each do |movie|
	Movie.create(
		title: movie.title,
    plot: movie.overview,
    poster_img: movie.poster_path,
    backdrop_path: movie.backdrop_path,
    release_date: movie.release_date,
    category: "top_rated"

	)
end

popular.results.each do |movie|
	Movie.create(
		title: movie.title,
    plot: movie.overview,
    poster_img: movie.poster_path,
    backdrop_path: movie.backdrop_path,
    release_date: movie.release_date,
    category: "popular"
	)
end




jarrian = User.create!(name:"Jarrian", username:"JearBear", location:"NYC",
  age:24, bio:"Lf > Chills", password: "jarrian10")
ben = User.create!(name:"Ben", username:"Benny", location:"Jersey",
    age:30, bio:"bored", password: "benny10")
mikey = User.create!(name:"Michael", username:"Beschwa", location:"FarRock",
    age:27, bio:"gains", password: "michael10")
