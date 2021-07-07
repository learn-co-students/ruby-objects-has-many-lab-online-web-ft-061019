class Author 
  attr_accessor :name, :posts
  
  @@all = 0 
  
  def initialize(name)
    self.name = name
    self.posts = []
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
    @@all +=1
  end
  
  def add_post_by_title(name)
    post = Post.new(name)
    self.posts << post
    post.author = self 
    @@all += 1
  end
  
  def self.post_count
    @@all
  end

end