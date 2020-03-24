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
  
  def self.genre_count
  genre_counter = Hash[@@genres.group_by{ |genres| genres }.flat_map{ |genre, count| [genre, count.size] }]
  genre_counter
  end
    
  
end