class LeaveInfo < ActiveRecord::Base
  attr_accessible :applicant_name, :cc_email_ids, :employee_id, :end_date, :reason_of_leave, :reference_status, :start_date, :status_of_day, :to_email_ids, :leave_status
  validates :reason_of_leave, :to_email_ids, :status_of_day, :presence => true
  belongs_to :employee

  scope :find_by_date, lambda { |s_date,e_date| where("start_date >= ? AND end_date <= ?",s_date, e_date ) }
  scope :latest_leave, order("created_at desc")
end

=begin  
  def self.find_by_date(s_date,e_date)
  @l = LeaveInfo.where("start_date >= ? AND end_date <= ?",s_date, e_date )
 
  return @l
  end 
=end  
