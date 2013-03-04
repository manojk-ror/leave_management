class PersonalInfo < ActiveRecord::Base
  attr_accessible :alternate_email, :date_of_birth, :employee_id, :father_name, :home_phone, :local_address, :mother_name, :name, :permanent_address, :phone
  validates :name, :presence => true
  validates :employee_id, :uniqueness => true
  belongs_to :employee
  

end
