require 'test_helper'

class BabysittersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get babysitters_index_url
    assert_response :success
  end

  test "should get show" do
    get babysitters_show_url
    assert_response :success
  end

end
