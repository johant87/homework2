require 'rails_helper'

RSpec.describe "Artists", type: :request do
  let(:artist){Artist.create(artistn: "justin")}

  describe "GET /artists/:id" do
    it "works! (yay!)" do
      get artist_path(artist)
      expect(response).to have_http_status(200)
    end
  end

  describe "DELETE /artists/:id" do
    it "Should delete artist" do
      artist
      expect {
        delete artist_path(artist)
      }.to change{Artist.count}.by(-1)
    end
  end

end
