#artist : song, song, song, song...
#   -> song belongs to artist 

class Artist 
    attr_accessor :name
    @@counter = 0 

    def initialize(name)
        @name = name 
        @songs = [ ] 
    end 

    def add_song(song)
        song.artist = self
        @songs << song 
        @@counter += 1
    end 

    def songs 
        @songs 
    end 

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end 

    def self.song_count 
        @@counter
    end 

end 