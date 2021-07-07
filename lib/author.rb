require 'pry'

class Author
   
   attr_accessor :name, :posts

   def initialize(name)
      self.name = name
      self.posts = []
   end

   def add_post(post_object)
      post_object.author = self
      self.posts << post_object
   end

   def add_post_by_title(title)
      new_post = Post.new(title)
      self.add_post(new_post)
   end

   def self.post_count
      Post.all.length
   end
end