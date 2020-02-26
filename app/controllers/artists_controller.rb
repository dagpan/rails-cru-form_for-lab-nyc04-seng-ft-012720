class ArtistsController < ApplicationController

   
   def index
     @artists = Artist.all
   end
   def show
     @artist = Artist.find(params[:id])
     @artist_songs = @artist.songs
   end
   def new
     @artist = Artist.new
   end
   def create
     @artist = Artist.create(artist_params)
     if @artist.valid?
        redirect_to @artist
     else
        render :new
     end
   end
   def edit
     @artist = Artist.find(params[:id])
   end
   def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    if @artist.valid?
       redirect_to artist_path
    else
       render :edit
    end
   end

   private
   def artist_params
      params.require(:artist).permit(:name, :bio)
   end
end
