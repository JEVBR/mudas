require "test_helper"

class MudasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mudas_index_url
    assert_response :success
  end
end
