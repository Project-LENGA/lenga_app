class TutorActivationMailer < ApplicationMailer
  default from: 'tutor_activation@lenga.com'

  def email_confirmation user
    @user = user
  end
end
