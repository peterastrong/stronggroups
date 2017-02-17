class UsersController < ApplicationController
  def new
    @user = User.new
    render "new.html.erb"
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    @user.save
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @user = User.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.assign_attributes()

  end

end
