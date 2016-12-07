require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest

  test "root should get welcome index" do
    get root_url
    assert_response :success
  end


end
