class ContactMailer < ApplicationMailer
  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(from: @email, to: "warren@warrenjfletcher.tech", subject:"Message from warrenjfletcher.tech from #{@name}")
  end
end
