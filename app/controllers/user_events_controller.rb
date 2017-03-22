class UserEventsController < ApplicationController
  def new
    @user_event = UserEvent.new
  end

  def create
    @user_event = UserEvent.new(user_id: params[:user_id], event_id: params[:event_id] )
    @user_event.save
    redirect_to "/user"
  end
end
