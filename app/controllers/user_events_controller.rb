class UserEventsController < ApplicationController
  def new
    @user_event = UserEvent.new
  end

  def create
    @user_event = UserEvent.new(user_id: params[:user_id], event_id: params[:event_id] )
    @user_event.save
    @event = Event.find_by(id: params[:event_id] )
    redirect_to "/subgroups/#{@event.subgroup_id}"
  end
end
