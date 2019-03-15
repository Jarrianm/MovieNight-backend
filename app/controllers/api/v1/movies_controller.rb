class Api::V1::MoviesController < ApplicationController

  def index
		@movies = Movie.all
		render json: @movies
	end

	def upcoming
		@upcoming = Movie.all.select do |movie|
			movie.category == 'upcoming'
		end
		render json: @upcoming
	end

	def now_playing
		@now_playing = Movie.all.select do |movie|
			movie.category == 'now_playing'
		end
		render json: @now_playing
	end

	def top_rated
		@top_rated = Movie.all.select do |movie|
			movie.category == 'top_rated'
		end
		render json: @top_rated
	end

	def popular
		@popular = Movie.all.select do |movie|
			movie.category == 'popular'
		end
		render json: @popular
	end

	def show
		@movie = Movie.find_by(ref_code: params[:id])
		render json: @movie
	end

end
