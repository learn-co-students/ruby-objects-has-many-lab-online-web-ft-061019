class Song

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        if @artist == nil
            return nil
        else 
            @artist.name
        end
    end

end