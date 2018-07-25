require 'pry'

class Song
  @@count=0
  @@genres=[]
  @@artists=[]
@@artist_count={}
@@genre_count={}
#@@all=[]

  attr_accessor :name, :genre, :artist


  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count +=1
    #@@all << self
    @@genres << self.genre
    @@artists << self.artist
#emily set up all these keys and tests for counts
      if @@artist_count.has_key?(@artist)
          @@artist_count[artist] += 1
        else
          @@artist_count[@artist] = 1
        end
          if @@genre_count.has_key?(@genre)
            @@genre_count[@genre] += 1
          else
            @@genre_count[@genre] = 1
          end
    end#close initialize method

  def artist #getter for artist
    @artist
  end

  def genre #getter for genre
    @genre
  end

  def self.count
   #Total number of songs created
  @@count
    # self.all.length
  end

  def self.all
      @@all
  end


###################################################
  def self.artists#Returns all artists in class
    @@artists.uniq
  end

  def self.genres #RETURN ALL GENRES IN CLASS
      @@genres.uniq
  end

  #count the genres and returns a hash {}
  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end #class end
