class Job < ActiveRecord::Base
  belongs_to :person
  belongs_to :employer
  belongs_to :job_title
end
