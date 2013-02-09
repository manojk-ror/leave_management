class PersonalInfo < ActiveRecord::Base
  attr_accessible :alternate_email, :date_of_birth, :email, :employee_id, :father_name, :home_phone, :local_address, :mother_name, :name, :permanent_address, :phone
belongs_to :employee
end
