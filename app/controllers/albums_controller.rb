class AlbumsController < ApplicationController
    #shows  you the form
    def new
    end

    def show
        @albums = Album.all
    end

#takes what you put on the form puts info in the data base
    def create
        new_album = Album.new
        new_album.title = params[:title]
        new_album.artist = params[:artist]
        new_album.year = params[:year]
        new_album.album_art = params[:album_art]
        new_album.save
    end
end
