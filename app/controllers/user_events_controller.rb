class UserEventsController < ApplicationController
  def new
    @user_event = UserEvent.new
  end

  def create
    user = User.find_by(email: params[:email])
    @user_event = UserEvent.new(user_id: user.id , event_id: params[:event_id] )
    @user_event.save
    redirect_to "/events/#{params[:event_id]}"
  end
end
