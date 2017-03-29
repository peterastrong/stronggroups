class EmailsController < ApplicationController

  def group_emails
    UserMailer.group_emails(params[:group_id], params[:subject], params[:body]).deliver_now
    redirect_to "/user"
  end

  def subgroup_emails
    UserMailer.subgroup_emails(params[:subgroup_id], params[:subject], params[:body]).deliver_now
    redirect_to "/subgroups/#{params[:subgroup_id]}"
  end


end
