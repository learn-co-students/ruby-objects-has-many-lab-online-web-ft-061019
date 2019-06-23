require 'pry'
class Artist
    attr_accessor :name, :songs
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
        self.songs ||= []
        self.songs << song
        # song.artist = self
        # binding.pry
    end

    def add_song_by_name(name)
        # Create new song
        song = Song.new(name)
        # Update artist of song
        song.artist = self
        song.artist_name = self.name
        # Add song into array
        add_song(song)
        # binding.pry    
    end

    def self.song_count
        Song.all.count
        # binding.pry
    end
end