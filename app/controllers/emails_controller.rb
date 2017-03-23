class EmailsController < ApplicationController

  def group_emails
    UserMailer.group_emails(params[:group_id], current_user, params[:subject], params[:body]).deliver_now
    redirect_to "/user"
  end

  def subgroup_emails
    
  end


end
