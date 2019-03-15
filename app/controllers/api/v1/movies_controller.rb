class Api::V1::MoviesController < ApplicationController

  def index
    @latest = Tmdb::Movie.latest
		@upcoming = Tmdb::Movie.upcoming
		@now_playing = Tmdb::Movie.now_playing
		@top_rated = Tmdb::Movie.top_rated
		@popular = Tmdb::Movie.popular
		render json: [latest: @latest,
      now_playing: @now_playing, 
      top_rated: @top_rated,
      popular: @popular,
      upcoming: @upcoming]
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie
  end

  private

  def movie_params
    params.permit(:title, :plot, :runtime,
    :poster_img, :release_date)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

end
