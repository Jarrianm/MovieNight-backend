class Api::V1::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    redner json: @movies
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
