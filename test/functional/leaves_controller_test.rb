require 'test_helper'

class LeavesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
