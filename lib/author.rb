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
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    p = Post.new(title)
    self.add_post(p)
    p
  end

  def self.post_count
    Post.all.count
  end
end
