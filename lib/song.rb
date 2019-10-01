class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@artists=[]
  @@genres=[]
  def initialize(name, artist, genre)
    @@count+=1
    @name=name
    @artist=artist
    @@artists<<@artist
    @genre=genre
    @@genres<<@genre
  end
  
  def self.count
    @@count
  end
  @@arthash={}
  def self.artists
    
    @@artists.each do |a|
      if hash[a]
        arthash[a]+=1
      else
        arthash[a]=1
      end
    end
    return arthash.keys
  end
  
  def self.artist_count
    @@arthash
  end
  
  def self.genres
    arthash={}
    @@artists.each do |a|
      if hash[a]
        arthash[a]+=1
      else
        arthash[a]=1
      end
    end
    return hash.keys
  end
end
  