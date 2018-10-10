class Song 
  
  attr_accessor :name, :artist, :genre
  
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
  
  @@count = 0 
  
  def count
    # @@count 
  end 
  
  def genres 
    @@genres.uniq
  end 
  
  def artists 
    @@artists.uniq
  end 
  
  def genre_count
    counts = Hash.new 0 
    @@genres.each do |genre|
      counts[genre] += 1 
    end 
  end 
  
  def artist_count
    counts = Hash.new 0 
    @@artists.each do |artist|
      counts[artist] += 1 
    end 
  end  
  
end 