require 'test_helper'

class HoursControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hours_new_url
    assert_response :success
  end

  test "should get edit" do
    get hours_edit_url
    assert_response :success
  end

  test "should get index" do
    get hours_index_url
    assert_response :success
  end

  test "should get show" do
    get hours_show_url
    assert_response :success
  end

end
