class SongsController < ApplicationController
  def get_three_songs
    @songs = Songs.all.limit(3)
  end
  def get_three_songs_json
    songs = Songs.all.limit(3)
    
    render json: songs
  end
  def show
  end
end
