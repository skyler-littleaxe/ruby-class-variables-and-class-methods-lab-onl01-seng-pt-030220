class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genre = []
  @@artist = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genre << genre
    @@artist << artist
  end
  
  def self.count
    @@count 
  end
  
  def self.genre_count
    
  end
    
  
end