class SongsController < ApplicationController
  def create
    playlist = Playlist.find(params[:playlist_id])
    playlist.songs.build(song_params)
    playlist.save
    redirect_to playlist, notice: 'La canción se ha creado con éxito!'
  end

  def destroy
    playlist = Playlist.find(params[:playlist_id])
    song = Song.find(params[:id])
    song.destroy

    redirect_to playlist, notice: 'la cancion se borró'
  end

  private

  def song_params
    params.require(:song).permit(:artist, :name)
  end
end
