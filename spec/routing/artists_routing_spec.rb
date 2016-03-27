require 'rails_helper'

RSpec.describe ArtistsController, type: :routing do

  describe "routing" do
    it "routes to #index" do
      expect(:get => "/").to route_to("artists#index")
    end
    it "routes to #show" do
      expect(:get => "/artists/1").to route_to("artists#show", :id => "1")
    end
    it "routes to #new" do
      expect(:get => "/artists/new").to route_to("artists#new")
    end
    it "routes to #destroy" do
      expect(:delete => "/artists/5").to route_to("artists#destroy", id: "5")
    end
    it "routes to #edit" do
      expect(:get => "/artists/5/edit").to route_to("artists#edit", id: "5")
    end

  end

end
