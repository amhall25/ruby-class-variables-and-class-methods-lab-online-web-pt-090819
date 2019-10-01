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
  
  def self.artists
    hash={}
    @@artists.each do |a|
      hash[a]+=1
    end
    return hash.keys
    
      
  end
end
  