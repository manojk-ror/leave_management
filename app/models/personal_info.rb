class PersonalInfo < ActiveRecord::Base
  attr_accessible :alternate_email, :date_of_birth, :email, :employee_id, :father_name, :home_phone, :local_address, :mother_name, :name, :permanent_address, :phone
  validates :date_of_birth, :father_name, :mother_name, :local_address, :permanent_address, :name, :presence => true
  validates :employee_id, :email, :uniqueness => true
  belongs_to :employee
end
