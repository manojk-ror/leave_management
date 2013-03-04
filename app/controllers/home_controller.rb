class HomeController < ApplicationController

  def index
    @check_personal_info = current_employee.personal_info rescue nil
    unless (@check_personal_info.present?)
      #redirect_to new_personal_info_path
    end 
  end
end
