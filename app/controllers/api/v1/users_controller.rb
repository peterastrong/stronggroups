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
    @user = User.find_by(id: params[:user_id])
    @user_event = @user.user_events.find_by(event_id: params[:event_id])
    if @user_event.registered == nil
      @user_event.registered = true
    else 
      if @user_event.registered == false
        @user_event.registered = true
      else 
        @user_event.registered = false  
      end 
    end 
    @user_event.save
    render "show.json.jbuilder"
  end

end
