require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'landing/land'
    assert_select "a[href=?]", policy_privacy_path
    assert_select "a[href=?]", policy_privacy_path(:anchor => "cookies")

  end

end
