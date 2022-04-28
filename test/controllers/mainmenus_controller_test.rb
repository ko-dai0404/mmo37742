require 'test_helper'

class MainmenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mainmenus_index_url
    assert_response :success
  end

end
