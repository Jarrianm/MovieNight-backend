class ApplicationController < ActionController::API

  def issue_token(payload)
       JWT.encode(payload, ‘learnlovecode’)
   end

   def decode_token
       JWT.decode(get_token, ‘learnlovecode’)[0]
   end

   def get_token
       request.authorization
   end

   def current_user?

       if request.authorization
           User.find(decode_token[“user_id”])
       end
   end

   def logged_in?
   !!current_user?
   end

   def authorized
     byebug
     if !logged_in?
       render json: { message: "Please log in"}, status: :unauthorized unless logged_in?
       end
  end

end
