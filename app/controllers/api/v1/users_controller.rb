class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    redner json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
  end

  private

  def user_params
    params.permit(:name, :username, :location,
      :age, :bio, :password_digest)
  end

  def find_user
    @user = User.find(params[:id])
  end



end
