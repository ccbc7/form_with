require "test_helper"

class RControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get r_index_url
    assert_response :success
  end
end
