require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase

  test "get index" do
    get :index
    assert_response :success
  end

  test "get show" do
     get :show, id: artists(:Justin).id
     assert_response :success
  end

  test "create artist" do
    assert_difference( 'Artist.count' ) do
       post :create, artist: { name: "Kanye west", image: "image.jpg"}
    end

    assert_redirected_to root_path( assigns( :artist ) )
 end

test "Destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, id: artists(:kanye).id
    end
    assert_redirected_to root_path
    end

end
