class ContactMailer < ActionMailer::Base
  default from: 'notifications@example.com'
 
  def welcome_email(contact)
    @contact = contact
   @to = "manu.ideology@gmail.com"
    mail(to: @to, subject: 'Welcome to My Awesome Site')
  end
end