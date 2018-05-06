require 'test_helper'

class SurversesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get surverses_new_url
    assert_response :success
  end

end
