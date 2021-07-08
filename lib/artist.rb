class Artist 
  attr_accessor :name
  
  @@song_count = 0

  def initialize(name)
    @name = name
    @song = []
  end 
  
  def add_song(song) #ASK BEN
    @song << song 
    song.artist = self
    @@song_count += 1
  end 
  
  def songs 
    @song
  end 
  
  def add_song_by_name(name)
     song = Song.new(name)
     @song << song 
    song.artist = self
    @@song_count += 1
  end 
  
  def self.song_count
    @@song_count 
  end
end 