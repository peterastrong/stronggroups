class UserMailer < ApplicationMailer
  default from: 'groupstogetherschool@gmail.com'

  def welcome_email(user)
    @user =
    @url = ''
    mail(to: @user.email, subject: "Welcome to GroupsTogether!")
  end 
end
