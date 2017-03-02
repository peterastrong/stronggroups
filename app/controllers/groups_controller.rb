class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.all
    render "index.html.erb"
  end
  
  def new
    @group = Group.new
    render "new.html.erb"
  end

  def create
    @group = Group.new(name: params[:name],
                      description: params[:description])
    @group.save
    redirect_to "/groups/#{@group.id}"
  end

  def show
    @group = Group.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @group = Group.find_by(id: params[:id])
    render "edit.html.erb"    
  end

  def update
    @group = Group.find_by(id: params[:id])
    @group.update(name: params[:name], description: params[:description])     
  end

  def destroy
    @group = Group.find_by(id: params[:id])
    @group.destroy
    redirect_to "/groups/new"
  end

end
