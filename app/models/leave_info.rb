class LeaveInfo < ActiveRecord::Base
  attr_accessible :applicant_name, :cc_email_ids, :employee_id, :end_date, :reason_of_leave, :reference_status, :start_date, :status_of_day, :to_email_ids, :leave_status
  validates :reason_of_leave, :to_email_ids, :status_of_day, :presence => true
  #validates :employee_id, :uniqueness => true
  belongs_to :employee
 
end

