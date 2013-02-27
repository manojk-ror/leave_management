class EmployeeMailer < ActionMailer::Base
  default from: "leave_notification@grepruby.com"
  
  def welcome_email(leave_info)
    @leave_info = leave_info
    mail(:to => @leave_info.to_email_ids, :subject => "Application for Leave")
    mail(:cc => @leave_info.cc_email_ids, :subject => "Inform of Leave")
  end

end
