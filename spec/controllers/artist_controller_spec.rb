require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do
  let(:artist) {Artist.create! valid_attributes}
  let(:valid_attributes) do
    {artistn: "Justin", image: ""}
  end


    describe "GET #index" do
      it "returns 200" do
      get :index
      expect(response).to have_http_status(200)
      end
    end
    describe "GET #show" do
      it "shows artist" do
      get :show, {id: artist.to_param}
      expect(assigns(:artist)).to eq(artist)
      end
    end
    describe "POST #create" do
      it "creates new artist" do
        expect {
          post :create, {artist: valid_attributes}
        }.to change(Artist, :count).by(1)
      end
    end
    # describe "DELETE #destroy" do
    #   it "destroy artist" do
    #     expect {
    #       delete :destroy, {artist: :id}
    #     }.to change(Artist, :count).by(-1)
    #   end
    # end
  end
