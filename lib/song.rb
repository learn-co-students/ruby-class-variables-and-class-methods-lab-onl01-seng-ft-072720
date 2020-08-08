class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []
  @@count = 0
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq 
  end
  def self.genres
    @@genres.uniq 
  end
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre_name|
      if genre_count[genre_name]
        genre_count[genre_name] += 1
      else
        genre_count[genre_name] = 1
      end
    end
    genre_count
  end
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist_name|
      if artist_count[artist_name]
        artist_count[artist_name] += 1
      else
        artist_count[artist_name] = 1
      end
    end
    artist_count
  end
end
      