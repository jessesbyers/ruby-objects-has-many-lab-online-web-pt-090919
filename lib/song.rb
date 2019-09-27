require 'pry'

class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

#not passing, returns object not artist name
  def artist_name
    self.artist
  end

# need to add conditional -
# if artist name is included in artist all,
#   then return artist name
# else return nil


  def song_count
    @@all.length
  end

end
