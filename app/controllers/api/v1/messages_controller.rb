class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.where(subgroup_id: params[:subgroup_id])
    render "index.json.jbuilder"
  end

  def create
    @message = Message.create(
      body: params[:body],
      user_id: params[:user_id],
      subgroup_id: params[:subgroup_id]
      )

    ActionCable.server.broadcast "activity_channel", {
      id: @message.id,
      name: @message.name,
      body: @message.body,
      subgroup_id: @message.subgroup_id,
      created_at: @message.created_at
    }
    render "show.json.jbuilder"
  end
end
