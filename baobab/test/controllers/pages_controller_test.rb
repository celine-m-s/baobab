require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show_collection" do
    get :show_collection
    assert_response :success
  end

  test "should get show_artwork" do
    get :show_artwork
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
