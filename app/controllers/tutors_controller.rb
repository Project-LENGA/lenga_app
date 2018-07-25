class TutorsController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @tutor = current_user.tutor
  end

  def new
    if current_user.authenticate_tutor(params[:tutor_activation_token])
      @tutor = Tutor.new
      @tutor.school_email = current_user.school_email
      render 'new'
    else
      redirect_to root_url
    end
  end

  def create
    @tutor = current_user.build_tutor(tutor_params)

    if @tutor.save
      current_user.activate_tutor
      redirect_to tutor_dashboard_url(@tutor)
    else
      render 'new'
    end
  end

  private
    def tutor_params
      params.require(:tutor).permit(:school_email, :used_agent, :used_agent_name, :processed_visa_by_self, :profile_comment)
    end
end
