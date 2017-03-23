class UserMailer < ApplicationMailer
  default from: 'groupstogetherinfo@gmail.com'

  # def welcome_email(recipient_email, sender)
  #   @recipient = recipient_email 

  #   @url = 'http://localhost:3000/login'
  #   mail(from: "Peter Strong <>", to: @recipient, subject: "Welcome to GroupsTogether!", to: @group.users.pluck(:email))
  # end 

  def group_emails(group_id, sender, subject, body)
    @group = Group.find_by(id: group_id)
    @sender = sender
    @subject = subject
    @body = body
    mail(from: "Admin <#{@sender.email}>", to: @group.users.pluck(:email), subject: @subject)
  end

  def subgroup_email(subgroup, sender)
    
  end
end


# for controller UserMailer.welcome_email().deliver_now
