class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artists = artist
    @genres = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count 
  end
  
  def self.genre_count
   Hash[@@genres.group_by{ |genres| genres }.flat_map{ |genre, count| [genre, count.size] }]
  end
    
  
end