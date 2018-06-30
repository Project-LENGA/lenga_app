class TutorsController < ApplicationController
  before_action :authenticate_user!

  def dashboard
  end

  def new
    if current_user.authenticate_tutor(params[:tutor_activation_token])
      @tutor = Tutor.new
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
      params.require(:tutor).permit(:graduate_year)
    end
end
