class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def create
    @job = Job.create(job_params)
    redirect_to jobs_path
  end

  def show
    @job = Job.find(params[:id])
  end

  private
  def job_params
    params.required(:job).permit(allowed_params)
  end

  def allowed_params
   [:name, :employer_id, :person_id, :job_title_id]
  end
end
