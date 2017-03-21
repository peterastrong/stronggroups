class Api::V1::EventsController < ApplicationController

  def index
    #need this?
  end

  def show
    @event = Event.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.assign_attributes(group_id: params[:group_id], subgroup_id: params[:subgroup_id], name: params[:name], date: params[:date], description: params[:description], registration_deadline: params[:registration_deadline], due_date: params[:due_date], must_register?: [:must_register?])
    @event.save
    render "show.json.jbuilder"
  end

end
