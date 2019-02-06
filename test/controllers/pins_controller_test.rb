require 'test_helper'

class PinsControllerTest < ActionDispatch::IntegrationTest
  test "should get pines" do
    get pins_pines_url
    assert_response :success
  end

end
