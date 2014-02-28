require 'test_helper'

class ArtworksControllerTest < ActionController::TestCase
  setup do
    @artwork = artworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork" do
    assert_difference('Artwork.count') do
      post :create, artwork: { belongs_to: @artwork.belongs_to, bibliography: @artwork.bibliography, comment: @artwork.comment, condition_report: @artwork.condition_report, depth: @artwork.depth, edition_type: @artwork.edition_type, estimation: @artwork.estimation, height: @artwork.height, medium: @artwork.medium, on_website: @artwork.on_website, order_status: @artwork.order_status, provenance: @artwork.provenance, signature: @artwork.signature, title: @artwork.title, width: @artwork.width, year: @artwork.year }
    end

    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should show artwork" do
    get :show, id: @artwork
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork
    assert_response :success
  end

  test "should update artwork" do
    patch :update, id: @artwork, artwork: { belongs_to: @artwork.belongs_to, bibliography: @artwork.bibliography, comment: @artwork.comment, condition_report: @artwork.condition_report, depth: @artwork.depth, edition_type: @artwork.edition_type, estimation: @artwork.estimation, height: @artwork.height, medium: @artwork.medium, on_website: @artwork.on_website, order_status: @artwork.order_status, provenance: @artwork.provenance, signature: @artwork.signature, title: @artwork.title, width: @artwork.width, year: @artwork.year }
    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should destroy artwork" do
    assert_difference('Artwork.count', -1) do
      delete :destroy, id: @artwork
    end

    assert_redirected_to artworks_path
  end
end
