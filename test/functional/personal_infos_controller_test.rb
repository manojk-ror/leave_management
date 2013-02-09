require 'test_helper'

class PersonalInfosControllerTest < ActionController::TestCase
  setup do
    @personal_info = personal_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_info" do
    assert_difference('PersonalInfo.count') do
      post :create, personal_info: { alternate_email: @personal_info.alternate_email, date_of_birth: @personal_info.date_of_birth, email: @personal_info.email, employee_id: @personal_info.employee_id, father_name: @personal_info.father_name, home_phone: @personal_info.home_phone, local_address: @personal_info.local_address, mother_name: @personal_info.mother_name, name: @personal_info.name, permanent_address: @personal_info.permanent_address, phone: @personal_info.phone }
    end

    assert_redirected_to personal_info_path(assigns(:personal_info))
  end

  test "should show personal_info" do
    get :show, id: @personal_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_info
    assert_response :success
  end

  test "should update personal_info" do
    put :update, id: @personal_info, personal_info: { alternate_email: @personal_info.alternate_email, date_of_birth: @personal_info.date_of_birth, email: @personal_info.email, employee_id: @personal_info.employee_id, father_name: @personal_info.father_name, home_phone: @personal_info.home_phone, local_address: @personal_info.local_address, mother_name: @personal_info.mother_name, name: @personal_info.name, permanent_address: @personal_info.permanent_address, phone: @personal_info.phone }
    assert_redirected_to personal_info_path(assigns(:personal_info))
  end

  test "should destroy personal_info" do
    assert_difference('PersonalInfo.count', -1) do
      delete :destroy, id: @personal_info
    end

    assert_redirected_to personal_infos_path
  end
end
