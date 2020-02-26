class SongsController < ApplicationController

    def index
        @songs = Song.all
      end
      def show
        @song = Song.find(params[:id])
      end
      def new
        @song = Song.new
        @artists_array = Artist.pluck(:name, :id)
        @genres_array = Genre.pluck(:name, :id)
      end
      def create
        @song = Song.create(song_params)
        if @song.valid?
           redirect_to @song
        else
           render :new
        end
      end
      def edit
        @song = Song.find(params[:id])
        @artists_array = Artist.pluck(:name, :id)
        @genres_array = Genre.pluck(:name, :id)
      end
      def update
        @song = Song.find(params[:id])
        @song.update(song_params)
        if @song.valid?
           redirect_to song_path
        else
           render :edit
        end
      end
   
      private
      def song_params
         params.require(:song).permit(:name, :artist_id, :genre_id)
      end

end
