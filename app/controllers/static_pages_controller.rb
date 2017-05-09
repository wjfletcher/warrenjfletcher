class StaticPagesController < ApplicationController

  def create
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.contact_email(name, email, message).deliver

    redirect_to root_url, notice: "Thanks for the email! I'll get back to you ASAP"
  end
end
