require "test_helper"

class TableControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get table_post_url
    assert_response :success
  end
end
