class SongsController < ApplicationController
  def index
    songs = Song.all 
    render json: songs.as_json
  end 

  def create
    song = Song.new(
      title: params[:input_title],
      album: params[:album_title],
      artist: params[:artist_name],
      year: params[:year]
    )
    song.save
    render json: song.as_json
  end 
  
  def show 
    song = Song.find_by(id: params[:id])
    render json: photo.as_json
  end

  def update
    song = Song.find_by(id: params[])
end
