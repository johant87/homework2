class SongsController < ApplicationController
before_action :load_artist
  def index
    @songs = Song.joins(:artist).all
  end

  def show
    @song = Song.find(params[:id])
  end

def new
  @song = Song.new
end

def create
    @song = Song.new(song_params)
    @song.artist = @artist
    if @song.save
        redirect_to root_path
    else
        render :new
    end
  end


def update
  @song = Song.find(params[:id])
  if @song.update(song_params)
    redirect_to @song
  else
    render :edit
  end
end

def destroy
  @song = Song.find(params[:id])
  if @song.destroy
    redirect_to songs_path
  else
    redirect_to @songs_path
  end
end

private

def load_artist
     @artist = Artist.find(params[:artist_id])
 end
  def song_params
    params.require(:song).permit(:title, :artist_id)
  end
end
