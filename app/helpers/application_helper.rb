module ApplicationHelper

def check_leave_status(leaves,status)
  #leaves.where(:leave_status => status)
  leaves.select{|leave| leave.leave_status.eql?(status)}
end

end
