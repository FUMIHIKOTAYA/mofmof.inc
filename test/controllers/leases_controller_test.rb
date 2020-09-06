require 'test_helper'

class LeasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leases_index_url
    assert_response :success
  end

end
