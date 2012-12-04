class SessionsController < ApplicationController
  def new
  end

 def create
  	if user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
  		session[:user_id] = user.id
  		redirect_to movies_path
  	else
  		render 'new'
  	end
  end

  def destroy
  	reset_session
  	redirect_to log_in_path
  end
end
