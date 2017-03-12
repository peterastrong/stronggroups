class SubgroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @subgroups = Subgroup.all
    render "index.html.erb"
  end

  def create
    @subgroup = Subgroup.new(group_id: params[:group_id], name: params[:name], description: params[:description])
    @subgroup.save
    UserSubgroup.create(user_id: current_user.id, subgroup_id: @subgroup.id)
    redirect_to "/subgroups/#{@subgroup.id}"
  end

  def show
    @subgroup = Subgroup.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @subgroup = Subgroup.find_by(id: params[:id])
    redirect_to '/' if current_user.member?(@subgroup.group_id)
    render "edit.html.erb"    
  end 

  def update
    @subgroup = Subgroup.find_by(id: params[:id])
    @subgroup.update(name: params[:name], description: params[:name])
    redirect_to "/subgroups/#{@subgroup.id}"
  end

  def destroy
    @subgroup = Subgroup.find_by(id: params[:id])
    @subgroup.destroy
    redirect_to "/subgroups/new"
  end
end
