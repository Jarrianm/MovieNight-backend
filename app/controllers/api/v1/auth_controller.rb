class Api::V1::AuthController < ApplicationController
#login


  def create
    @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
      token = JWT.encode({user_id: @user.id}, "learnlovecode")
      render json: {user: @user, token: token}
    else
      render json: {message: "STOOPID"}
  end 
end




end
