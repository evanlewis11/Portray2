class MainController < ApplicationController
  
  def about_us
  end
  
  
  def our_partner
  end
  
  
  def advertising_solutions
  end
  
  
  def cafeteria_solutions
  end
  
  def landing
    render layout: "splash"
  end
  
  def home
    render layout: "home"
  end
  
  def thanks

      name = params[:name]
      email = params[:email]
      message = params[:message]

      unless name.blank? && email.blank? && message.blank?
        ContactMailer.contact_form_email(name, email, message).deliver
      else
        redirect_to session[:return_to], notice: "Please fill in all the fields!"
      end

  end
  
end