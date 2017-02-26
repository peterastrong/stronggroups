class SessionsController < ApplicationController
  def new
    render "new.html.erb"
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      flash[:success] = "Login Successful."
      redirect_to "/user"
    else 
      flash[:warning] = "Invalid entry..try again"
      redirect_to "/login"
    end 
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out"
    redirect_to "/login"
  end
  
end
