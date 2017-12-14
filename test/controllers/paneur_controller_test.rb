require 'test_helper'

class PaneurControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get paneur_map_url
    assert_response :success
  end

  test "should get overview" do
    get paneur_overview_url
    assert_response :success
  end

  test "should get archival_sources" do
    get paneur_archival_sources_url
    assert_response :success
  end

  test "should get country" do
    get paneur_country_url
    assert_response :success
  end

end
