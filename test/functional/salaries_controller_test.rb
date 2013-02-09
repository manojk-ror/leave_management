require 'test_helper'

class SalariesControllerTest < ActionController::TestCase
  setup do
    @salary = salaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salary" do
    assert_difference('Salary.count') do
      post :create, salary: { applicable_month: @salary.applicable_month, applicable_salary: @salary.applicable_salary, deduction: @salary.deduction, deduction_description: @salary.deduction_description, employee_id: @salary.employee_id, leave_info_id: @salary.leave_info_id, previous_month_salary: @salary.previous_month_salary }
    end

    assert_redirected_to salary_path(assigns(:salary))
  end

  test "should show salary" do
    get :show, id: @salary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salary
    assert_response :success
  end

  test "should update salary" do
    put :update, id: @salary, salary: { applicable_month: @salary.applicable_month, applicable_salary: @salary.applicable_salary, deduction: @salary.deduction, deduction_description: @salary.deduction_description, employee_id: @salary.employee_id, leave_info_id: @salary.leave_info_id, previous_month_salary: @salary.previous_month_salary }
    assert_redirected_to salary_path(assigns(:salary))
  end

  test "should destroy salary" do
    assert_difference('Salary.count', -1) do
      delete :destroy, id: @salary
    end

    assert_redirected_to salaries_path
  end
end
