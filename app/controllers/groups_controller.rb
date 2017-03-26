class GroupsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    if current_user
      @groups = current_user.groups.all
    else
      @groups = Group.all.sort
    end 
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
    UserGroup.create(user_id: current_user.id, group_id: @group.id)
    redirect_to "/groups/#{@group.id}"
  end

  def show
    @group = Group.find_by(id: params[:id])
    if current_user
      @user_subgroups = current_user.subgroups.where(group_id: @group.id)
    end
    if @group.education? 
      @editor_role = "Teacher"
      elsif @group.sports?
        @editor_role = "Coach"
      else
        @editor_role = "Editor"
    end 
    if @group.education? 
      @user_role = "Student"
      else
        @user_role = "Member"
    end
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
