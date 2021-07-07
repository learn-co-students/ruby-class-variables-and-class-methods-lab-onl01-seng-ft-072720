require "pry"
class Song 
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = []
  @@artists = []
    def initialize(name, artist, genre)
      @name = name 
      @artist = artist
      @genre = genre 
      @@artists << artist 
      @@genres << genre
      @@count += 1
    end
    
    def self.genre_count
      genre_count = {}
      rap_count = 0
      pop_count = 0
      country_count = 0
     
      @@genres.each do |key|
        if key == "rap"
          rap_count += 1 
        elsif key == "pop"
          pop_count += 1
        elsif key == "country"
          country_count += 1 
        end
      end
        
      if pop_count > 0
        genre_count["pop"] = pop_count
      end
      if rap_count > 0
        genre_count["rap"] = rap_count
      end
      if country_count > 0 
        genre_count["country"] = country_count
      end
     
      
      
      return genre_count
      end
   def self.artist_count
    artist_count = {}
    @@artists.each do |key|
      if artist_count.include?(key)
         artist_count[key] = @@artists.count(key)
        else
          artist_count[key] = 1
        end
      end
      return artist_count
    end
  

    def self.genres 
      genres = @@genres.uniq 
      return genres
    end
 
    
    def self.artists
      artists = @@artists.uniq 
      return artists
    end
    
     def self.count 
      @@count 
    end
  
  
  end