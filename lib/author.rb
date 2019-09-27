class Author
  attr_accessor :name
  attr_reader :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all
  end

  def add_post(post)
    @@post_count += 1
    post = Post.new
    @@all << post
  end

end
