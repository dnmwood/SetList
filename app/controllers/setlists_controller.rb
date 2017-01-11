class SetlistsController < ApplicationController

  def index
    @setlist = Setlist.all
  end

  def show
    setlist = Setlist.find(params[:id])
    @song_list = JSON.parse(setlist.song_list)
  end

  def new
    @setlist = Setlist.new
  end

  def create
    @setlist = Setlist.new(setlist_params)

    if @setlist.save
      redirect_to setlists_path
    else
      render :new
    end
  end

  private

  def setlist_params
    puts params
    params.require(:setlist).permit(:title, :song_list)
  end

end
