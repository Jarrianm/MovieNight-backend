class Api::V1::MatchingsController < ApplicationController

  def index
    @matchings = Matching.all
    render json: @matchings
  end

  def show
    @matching = Matching.find(params[:id])
    render json: @matching
  end

  def create
    @matching = Matching.create(matching_params)
    render json: @matching
end

  private

  def matching_params
    params.permit(:movie_id, :user_id)
  end

  def find_matching
    @matching = Matching.find(params[:id])
  end

end
