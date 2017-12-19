class MusicsController < ApplicationController

  def index
    @all_Music = Music.all
    render json: @all_Music
  end

  def create
    music = Music.new(music_params)
    if music.save
      render json: music
    else
      render json: {errors: music.errors}
    end
  end

  def show
    @music = Music.find(params[:id])
    render json: @music
  end

  def update
    @music = Music.find(params[:id])
    @music.update(user_params)
    render json: @music
  end

  def destroy
    @music = Music.find(params[:id])
    @music.destroy
    render json: Music.all
  end

  private

  def music_params
    params.require(:music).permit(:artist, :name, :source, :length)
  end

end
