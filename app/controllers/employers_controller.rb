class EmployersController < ApplicationController
  def index
    @employers = Employer.all
  end

  def create
    @employer = Employer.create(employer_params)
    redirect_to employers_path
  end

  def show
    @employer = Employer.find(params[:id])
  end

  private
  def employer_params
      params.required(:employer).permit(allowed_params)
  end

  def allowed_params
   [:name]
  end
end
