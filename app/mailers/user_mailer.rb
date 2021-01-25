class UserMailer < ApplicationMailer
  
  def send_welcome(user)
    mail(to: user.email, subject: "Welcome")
  end
end
