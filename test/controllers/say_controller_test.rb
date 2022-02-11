require "test_helper"

class SayControllerTest < ActionDispatch::IntegrationTest
  test "should get hi" do
    get say_hi_url
    assert_response :success
  end
end
