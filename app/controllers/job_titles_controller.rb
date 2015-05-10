class JobTitlesController < ApplicationController
  def index
    @job_titles = JobTitle.all
  end

  def create
    @job_title = JobTitle.create(job_title_params)
    redirect_to job_titles_path
  end

  def show
    @job_title = JobTitle.find(params[:id])
  end

  private
  def job_title_params
      params.required(:job_title).permit(allowed_params)
  end

  def allowed_params
   [:name]
  end
end
