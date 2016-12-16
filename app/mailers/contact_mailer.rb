class ContactMailer < ActionMailer::Base
  default to: 'awpearce@outlook.com'

  def contact_email(name, email, message)
    @name = name
    @email = email
    @body = message

    mail(from: email, subject: 'Contact Form Message')
  end
end
