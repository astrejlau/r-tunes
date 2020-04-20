class SongsController < ApplicationController
    def new
    end

    def index
        @all_Songs = Song.all
        @all_Songs.each do |song|
            song.album
            song.name
            song.duration
            song.youtube_link
        end
    end

    def create
        new_song = Song.new
        new_song.album = params[:Album_id]
        new_song.name = params[:name]
        new_song.duration = params[:duration]
        new_song.youtube_link = params[:youtube_link]
        new_song.save
    end
end
