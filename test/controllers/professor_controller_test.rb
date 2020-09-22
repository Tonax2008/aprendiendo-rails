require 'test_helper'

class ProfessorControllerTest < ActionDispatch::IntegrationTest
  test "should get new_professor" do
    get professor_new_professor_url
    assert_response :success
  end

  test "should get update_professor" do
    get professor_update_professor_url
    assert_response :success
  end

end
