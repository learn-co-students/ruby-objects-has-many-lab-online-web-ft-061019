require 'pry'
class Author
    attr_accessor :name, :posts
    def initialize(name)
        @name = name
        @posts = []
    end
    def add_post(post)
        post.author = self
        post.author_name = self.name
        @posts << post
    end

    def add_post_by_title(title)
        # Create new song
        post = Post.new(title)
        post.author = self
        post.author_name = self.name
        add_post(post)
    end

    def self.post_count
        Post.all.uniq.count
    end
end