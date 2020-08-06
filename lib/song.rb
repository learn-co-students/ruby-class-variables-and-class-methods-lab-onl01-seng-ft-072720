require 'pry'

class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genre_count
    hash_genres = Hash.new(0)
    @@genres.each do |g|
      hash_genres[g] +=1 
    end
    hash_genres
  end
  
  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |a|
       artist_hash[a]+=1 
    end
    artist_hash
  end
  
  
end