class TutorActivationsController < ApplicationController
  include TutorActivationsHelper

  before_action :authenticate_user!

  def register_email
  end

  def send_confirmation_email
    current_user.update_attributes(school_email: params[:email])

    if current_user.create_tutor_activation_digest
      TutorActivationMailer.email_confirmation(current_user).deliver_now
      redirect_to root_url
    else
      render 'register_email'
    end
  end

  def check_domain
    confirmed = check_email_domain params[:email]

    render json: { confirmed: confirmed }
  end
end
