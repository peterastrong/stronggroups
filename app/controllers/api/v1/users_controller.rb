class Api::V1::UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    @user.save

    render "show.json.jbuilder"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.assign_attributes(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    if @user.save
      flash[:success] = "user has been updated"
      render "/user"
    else
      flash[:error] =  "user has not been updated"
      render #????
    end 
  end
end
