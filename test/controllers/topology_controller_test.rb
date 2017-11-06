require 'test_helper'

class TopologyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get topology_show_url
    assert_response :success
  end

end
