require "test_helper"

class BookInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_info_index_url
    assert_response :success
  end
end
