class UserGroupsController < ApplicationController

  def new
    @user_group = UserGroup.new
  end

  def create
    user = User.find_by(email: params[:email])
    @user_group = UserGroup.new(group_id: params[:group_id], user_id: user.id, role: params[:role])
    @user_group.save
    redirect_to "groups/#{params[:group_id]}"
  end



end
