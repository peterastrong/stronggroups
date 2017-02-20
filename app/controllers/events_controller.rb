class EventsController < ApplicationController

  def index
    @events = Event.all 
    render "index.html.erb"
  end

  def new
    @event = Event.new
    render "new.html.erb"
  end

  def create #have not added must_register? column here
    @event = Event.new(group_id: params[:group_id], 
                      subgroup_id: params[:subgroup_id],
                      name: params[:name],
                      date: params[:date],
                      description: params[:description],
                      registration_deadline: params[:registration_deadline],
                      due_date: params[:due_date])
    @event.save 
    redirect_to "/events/#{@event.id}"
  end

  def show
    @event = Event.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @event = Event.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.update(group_id: params[:group_id], 
                subgroup_id: params[:subgroup_id],
                name: params[:name],
                date: params[:date],
                description: params[:description],
                registration_deadline: params[:registration_deadline],
                due_date: params[:due_date])
    redirect_to "/events"
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    redirect_to "/events"
  end


end
