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