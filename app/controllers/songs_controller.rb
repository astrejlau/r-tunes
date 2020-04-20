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
end
