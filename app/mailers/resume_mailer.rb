class ResumeMailer < ActionMailer::Base
  default from: "from@example.com"
  def welcome_email(resume)
    @resume = resume
   @to = "manu.ideology@gmail.com"
    mail(to: @to, subject: 'Welcome to My Awesome Site')
  end
end
