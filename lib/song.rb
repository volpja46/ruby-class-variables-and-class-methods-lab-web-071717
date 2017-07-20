class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = [] #set class variable
@@genres = []
  def initialize  (name, artist, genre)
      @@count += 1
    @name = name
    @artist = artist
    @genre = genre
      @@genres << genre
    @@artists << artist

  end

def self.count
  @@count
end

# unique array of artists of the songs
  def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
    genrehash = Hash.new(0)
    @@genres.each do |genre|
      genrehash[genre] += 1
    end
    genrehash
  end

def self.artist_count
  artisthash = Hash.new(0)
    @@artists.each do |artist|
      artisthash[artist] +=1
  end
  artisthash
end

end
