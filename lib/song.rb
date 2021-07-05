class Song
attr_accessor :name, :artist

 @@all = [] #line 21-25

 def initialize(name) #line 12
  @name = name
  @@all << self
end

 def self.all
  @@all
end

 def artist_name
  if self.artist # line 50
    self.artist.name # line 51
  else
    nil
  end
end


end
