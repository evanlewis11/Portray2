class ContactMailer < ActionMailer::Base
  
  default from: "contact@portrayadvertising.com"
  
  def contact_form_email(name, email, message)
    @name = name
    @email = email
    @message = message
    
    mail(to: email, bcc: "contact@portrayadvertising.com", subject: "[Portray Advertising] Contact Form Message")
  end
  
end
