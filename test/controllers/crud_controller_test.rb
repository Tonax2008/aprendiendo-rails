require 'test_helper'

class CrudControllerTest < ActionDispatch::IntegrationTest
  test "should get group" do
    get crud_group_url
    assert_response :success
  end

  test "should get student" do
    get crud_student_url
    assert_response :success
  end

  test "should get profesor" do
    get crud_profesor_url
    assert_response :success
  end

  test "should get schedule" do
    get crud_schedule_url
    assert_response :success
  end

end
