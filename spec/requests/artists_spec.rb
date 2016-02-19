require 'rails_helper'

RSpec.describe "Artists", type: :request do
  let(:artist){Company.create(name: "test")}
  describe "GET /artists" do
    it "works! (waaaaaaat)" do
      get artists_path
      expect(response).to have_http_status(200)
    end
  end
end
