class TutorsController < ApplicationController
  # before_action :authenticate_user!

  def dashboard

  end

  def new
    @tutor = Tutor.new
  end

  def create
    @tutor = Tutor.new(tutor_params)
    if @tutor.save
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
