class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  
  attr_accessible :email, :password, :password_confirmation, :remember_me, :date_of_joining, :admin_status
  validates :email, :password, :password_confirmation,:date_of_joining, :presence => true
  # attr_accessible :title, :body
  
  has_one :personal_info, :dependent => :destroy
  has_many :leave_infos, :dependent => :destroy
  has_one :salary, :dependent => :destroy

end
