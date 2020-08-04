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
    @@genres.push(genre)
    @@artists.push(artist)
    
    
  end
  
def self.count 
  @@count
end
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.genre_count
    hash = {}
  
    gen_uni = @@genres.uniq 
   
    gen_uni.each do |g|
         i = 0 
      hash[g] = 0 
      @@genres.each do |j|
        if j == g then i += 1 
        end
        hash[g] = i 
      end
    end
    
     hash
    end
      
      def self.artists
        @@artists.uniq 
      end
      
      def self.artist_count
    hash = {}
  
    gen_uni = @@artists.uniq 
   
    gen_uni.each do |g|
         i = 0 
      hash[g] = 0 
      @@artists.each do |j|
        if j == g then i += 1 
        end
        hash[g] = i 
      end
    end
    
     hash
    end
  
end