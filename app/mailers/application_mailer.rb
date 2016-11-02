class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'


  def shared title, description
     @subject = 'Shared task'
     @title = title
     @description = description
     mail(to: @user.email, subject: @subject)
  end
end
