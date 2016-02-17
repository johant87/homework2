require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase

  test "should get song index" do
    get :index
    assert_response :success
  end


end
