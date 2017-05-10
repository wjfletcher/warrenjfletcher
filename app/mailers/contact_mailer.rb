class ContactMailer < ApplicationMailer
  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(from: @email, to: "warren@warrenjfletcher.tech", subject:"warrenjfletcher.tech message from #{@name}")
  end
end
