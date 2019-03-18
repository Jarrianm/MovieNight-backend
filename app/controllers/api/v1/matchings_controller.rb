class Api::V1::MatchingsController < ApplicationController

  def index
    @matchings = Matching.all
    render json: @matchings
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie
  end

  private

  def movie_params
    params.permit(:show_id, :user_id)
  end

  def find_matching
    @movie = Movie.find(params[:id])
  end

end
