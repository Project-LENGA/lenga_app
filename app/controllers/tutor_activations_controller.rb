class TutorActivationsController < ApplicationController
  include TutorActivationsHelper

  before_action :authenticate_user!

  def register_email
  end

  def send_confirmation_email
    if current_user.update_attributes(tutor_activations_params)
      TutorActivationMailer.email_confirmation current_user
      redirect_to root_url
    else
      render 'register_email'
    end
  end

  def check_domain
    confirmed = check_email_domain params[:email]

    render json: { confirmed: confirmed }
  end

  private
    def tutor_activations_params
      params.require(:user).permit(:school_email)
    end
end
