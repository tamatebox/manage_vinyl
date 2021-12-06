
class SongController < ApplicationController
  def create
    if @song.create(song_params)
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def update
    @song = song.find(params[:id])
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  private

  def song_params
    params.require(:song).permit(:url)
  end
end