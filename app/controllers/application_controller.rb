class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #rescue_from ActiveRecord::RecordNotFound, with: :record_not

  #def record_not
   #redirect_to root_path
  #end
 
  
  #before_filter :authenticate_employee!

 
  
end
