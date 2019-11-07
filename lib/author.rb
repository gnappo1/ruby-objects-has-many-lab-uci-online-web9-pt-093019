class Author 
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def self.all_posts
    Post.all
  end
  
  def posts
    self.class.all_posts.select {|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
  
  def self.post_count
    all_posts.count
  end
end