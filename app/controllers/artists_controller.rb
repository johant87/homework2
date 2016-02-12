class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end
  def create
    if @artist = Artist.create(artist_params)
      redirect_to @artist
    else
      render :new
    end
  end
  def edit
      @artist = Artist.find(params[:id])
    end
  def update
  end



private
  def artist_params
    params.require(:artist).permit(
    :artistn
    )
  end

end
