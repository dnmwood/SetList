require 'test_helper'

class SetlistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get setlist_index_url
    assert_response :success
  end

end
