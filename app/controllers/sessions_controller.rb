class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    # If user exists AND password is correct
    if user && user.authenticate(params[:password])
      # Save user id inside browser cookie
      session[:user_id] = user.id
      redirect_to '/'
    else 
      # if user login fails, send back to login form
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end