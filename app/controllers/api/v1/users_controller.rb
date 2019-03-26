class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: {user: @user, movies: @user.movies}
  end

  def create
    @user = User.create(user_params)
    payload = {user_id: @user.id}
    token = JWT.encode(payload, "learnlovecode")
    render json: {user: @user, token: token}
  end



  private

  def user_params
    params.permit(:name, :username, :location,
      :age, :bio, :password)
  end

  def find_user
    @user = User.find(params[:id])
    render json: @user
  end



end
