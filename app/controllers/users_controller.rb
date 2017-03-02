class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]

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
    @user = User.find_by(id: current_user.id)
    @groups = @user.groups #not currently in use on show page (3/1/17)
    render "show.html.erb"
  end

  def edit
    @user = User.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.assign_attributes(email: params[:email])
    @user.save
    redirect_to "/users/#{@user.id}"
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to "/users/new" #can change later
  end


end
