class Post
  attr_accessor :name, :author
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post)
    post_count += 1
    post = Post.new
    @@all << post
  end
end
