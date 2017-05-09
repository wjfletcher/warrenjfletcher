class StaticPagesController < ApplicationController

  def create
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.contact_email(name, email, message).deliver
  end
end
