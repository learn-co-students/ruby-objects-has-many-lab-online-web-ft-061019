class Song
    attr_accessor :title

    def initialize (title)
        @title = title
        @@all = []
        @@all << self
    end

end