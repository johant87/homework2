class ArtistsController < ApplicationController
  def index
   @artists = Artist.joins(:song).all
  end
  #def index
  #  @artists = Artist.all
  #end
  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end
  def create
    if @artist = Artist.create(artist_params)
      redirect_to root_path
    else
      render :new
    end
  end
  def edit
      @artist = Artist.find(params[:id])
    end
  def update
    @artist = Artist.find(params[:id])
      if @artist.update(artist_params)
        redirect_to @artist
      else
        render :edit
      end
    end

    def destroy
       @artist = Artist.find(params[:id])
      @artist.destroy
         redirect_to root_path

     end

private

def set_artist
  @artist = Artist.find(params[:id])
end


  def artist_params
    params.require(:artist).permit(
    :artistn, :image,
    song_attributes: [
      :id, :title, :artist_id
    ]
  )
  end
end
