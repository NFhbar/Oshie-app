require 'test_helper'

class LandingControllerTest < ActionDispatch::IntegrationTest
  test "should get land" do
    get landing_land_url
    assert_response :success
  end

end
