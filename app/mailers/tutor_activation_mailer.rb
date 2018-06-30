class TutorActivationMailer < ApplicationMailer
  default from: 'tutor_activation@lenga.com'

  def email_confirmation user
    @user = user
    mail to: @user.school_email, subject: 'Lenga tutor activation'
  end
end
