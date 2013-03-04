class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  
  attr_accessible :email, :password, :password_confirmation, :remember_me, :date_of_joining, :admin_status, :personal_info_attributes
  validates  :email, :password, :password_confirmation,:date_of_joining, :presence => true
  validates_uniqueness_of :email
  validates :email, :email_format => true
  # attr_accessible :title, :body
  
  has_one :personal_info, :dependent => :destroy
  accepts_nested_attributes_for :personal_info
  has_many :leave_infos,  :foreign_key => "applicant_id", :dependent => :destroy
  has_one :salary, :dependent => :destroy
  #:foreign_key => "applicant_id",
end
