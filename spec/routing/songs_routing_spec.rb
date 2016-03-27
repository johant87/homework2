require 'rails_helper'

RSpec.describe SongsController, type: :routing do

  describe "routing" do
    it "routes to #show" do
      expect(:get => "artists/1/songs/2").to route_to("songs#show", artist_id: "1", id: "2")
    end
    it "routes to #new" do
      expect(:get => "artists/1/songs/new").to route_to("songs#new", artist_id: "1")
    end
    it "routes to #destroy" do
      expect(:delete => "artists/1/songs/5").to route_to("songs#destroy", artist_id: "1", id: "5")
    end
  end

end
