class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name, artist = nil)
    self.name = name 
    self.artist = artist
    @@all << self
  end
  
  def artist_name
    if self.artist 
      self.artist.name 
    else
      nil
    end
  end
  
  def self.all
    @@all
  end
  
end