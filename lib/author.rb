class Author
  attr_accessor :name
  attr_reader :post
  @@post_count = 0

  def initialize(name)
    @name = name
    @post = []
  end

  def posts
    Post.all
  end

end
