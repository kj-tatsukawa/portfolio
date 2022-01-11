require "test_helper"

class HeaderMenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get header_menu_index_url
    assert_response :success
  end
end
