require 'pry'
class Song
   @@all = []

   attr_accessor :artist, :name, :genre

   def initialize(name)
      self.name = name
      @@all << self
   end

   def self.all
      @@all
   end

   def artist_name
      self.artist == nil ? nil : self.artist.name 
   end
end