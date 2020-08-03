class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=  1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genre_count.keys
  end
  
  def self.artists
    artist_count.keys
  end
  
  def self.genre_count
    typeCount(@@genres)
  end
  
  def self.typeCount(type)
    hash = {}
    type.each do |a| hash.keys.include?(a) ? hash[a] += 1 : hash[a] = 1
    end
    hash 
  end
  
  def self.artist_count
    typeCount(@@artists)
  end

  
end
    