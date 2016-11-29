require 'test_helper'

class PolicyControllerTest < ActionDispatch::IntegrationTest
  test "should get privacy" do
    get policy_privacy_url
    assert_response :success
  end

  test "should get promise" do
    get policy_promise_url
    assert_response :success
  end

  test "should get acceptable" do
    get policy_acceptable_url
    assert_response :success
  end

end
