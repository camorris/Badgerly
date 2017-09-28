require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home_page" do
    get welcome_home_page_url
    assert_response :success
  end

end
