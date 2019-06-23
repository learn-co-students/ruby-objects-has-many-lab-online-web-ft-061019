class Post
    attr_accessor :title, :author, :author_name
    @@all = []
    def initialize(name)
        @title = name
        @@all << self
    end
    def self.all
        @@all
    end
    def author_name
        # binding.pry
        self.author.nil? ? nil : self.author.name
        # self.author.name
    end
end