class AlbumsController < ApplicationController
    def new
    end

    def index
        @albums = Album.all
        
        @albums.each do |album|
            album.title
            album.artist
            album.year
            album.album_art
        end
    end

    def create
        new_album = Album.new
        new_album.title = params[:title]
        new_album.artist = params[:artist]
        new_album.year = params[:year]
        new_album.album_art = params[:album_art]
        new_album.save
    end
end
