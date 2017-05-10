class StaticPagesController < ApplicationController

  def create
    binding.pry
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.contact_email(name, email, message).deliver

    redirect_to root_url, notice: "Thanks for the email! I'll get back to you ASAP"
  end

  def email_params
    params.permit(
      :name,
      :email,
      :message
    )
  end
end
