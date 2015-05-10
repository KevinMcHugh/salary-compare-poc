class JobTitle < ActiveRecord::Base
  has_many :jobs
  def average_salary
    jobs.average(:salary)
  end
end
