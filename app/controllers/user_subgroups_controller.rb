class UserSubgroupsController < ApplicationController
  def new
    @user_subgroup = UserSubgroup.new
  end

  def create
    #user = User.find_by(email: params[:email])
    user = User.find_by(id: params[:id])
    @user_subgroup = UserSubgroup.new(subgroup_id: params[:subgroup_id], user_id: user.id)
    @user_subgroup.save
    redirect_to "/subgroups/#{params[:subgroup_id]}"
  end
end
