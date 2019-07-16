require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get bookings_view_url
    assert_response :success
  end

  test "should get create" do
    get bookings_create_url
    assert_response :success
  end

end
