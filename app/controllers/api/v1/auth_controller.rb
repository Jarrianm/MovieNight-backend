class Api::V1::AuthController < ApplicationController
#login
# skip_before_action :authorized, only: [:create]

  def create

    @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
      token = JWT.encode({user_id: @user.id}, "learnlovecode")
      render json: {user: @user, token: token}
    else
      render json: {message: "STOOPID"}
  end
end

def show
  if current_user
    render json: {user: current_user}
  else
    render json: {error: "not the current user"}
end
end




end
