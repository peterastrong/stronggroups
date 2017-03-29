class UserMailer < ApplicationMailer
  default from: 'groupstogetherinfo@gmail.com'

  def group_emails(group_id, subject, body)
    @group = Group.find_by(id: group_id)
    @subject = subject
    @body = body
    mail(to: @group.users.pluck(:email), subject: @subject)
  end

  def subgroup_emails(subgroup_id, subject, body)
    @subgroup = Subgroup.find_by(id: subgroup_id)
    @subject = "#{@subgroup.name}: #{subject}"  
    @body = body
    mail(to: @subgroup.users.pluck(:email), subject: @subject)
  end
end

