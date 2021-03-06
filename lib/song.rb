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
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
   Hash[*@@genres.group_by{ |genre_group| genre_group }.flat_map{ |genre_type, count| [genre_type, count.size] }]
  end
  
  def self.artist_count
    Hash[*@@artists.group_by{ |artist_group| artist_group }.flat_map{ |artist, count| [artist, count.size] }]
  end
    
  
end