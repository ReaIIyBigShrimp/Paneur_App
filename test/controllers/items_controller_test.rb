require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get items_view_url
    assert_response :success
  end

  test "should get view_all" do
    get items_view_all_url
    assert_response :success
  end

  test "should get add" do
    get items_add_url
    assert_response :success
  end

  test "should get remove" do
    get items_remove_url
    assert_response :success
  end

end
