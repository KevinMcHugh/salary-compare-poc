class Person < ActiveRecord::Base

  has_many :jobs
  def title
    current_job.try(:job_title).try(:name)
  end

  def employer
    current_job.try(:employer).try(:name)
  end

  def salary
    current_job.try(:salary)
  end

  def current_job
    jobs.order(:created_at).last
  end
end
