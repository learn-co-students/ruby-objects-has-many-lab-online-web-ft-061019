class Artist
   attr_accessor :name, :songs
   
   def initialize(name)
      self.name = name
      self.songs = []
   end

   def add_song(song_object)
      song_object.artist = self
      self.songs << song_object
   end

   def add_song_by_name(song_name)
      new_song = Song.new(song_name)
      self.add_song(new_song)
   end

   def self.song_count
      Song.all.length
   end
end
