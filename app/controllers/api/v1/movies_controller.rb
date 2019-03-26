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
		@movie = Movie.find(params[:id])
		render json: @movie
end

    # , each_serializer: MovieSerializer, root: false	end

  private

  def movie_params
    params.permit(:title,
    :plot,
    :poster_img,
    :backdrop_path,
    :release_date,
    :category )
  end
  def find_movie
		@movie = Movie.find(params[:id])
		render json: @movie
	end



end
