require 'test_helper'

class FarmEasyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get farm_easy_index_url
    assert_response :success
  end

end
