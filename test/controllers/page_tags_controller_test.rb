require "test_helper"

class PageTagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_tags_index_url
    assert_response :success
  end

  test "should get show" do
    get page_tags_show_url
    assert_response :success
  end
end
