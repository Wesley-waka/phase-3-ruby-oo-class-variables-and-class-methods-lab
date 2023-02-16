class Song
    attr_accessor :name, :artist, :genre
    @@count =0
    @@artists= [] #wheneve a new song is initialized you should add artist to the array
    @@genres = [] #wheneve a new song is initialized you should add genre to the array
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1  
        @@genres.push(genre)
        @@artists.push(artist)
    end
    @@artist_count= {}
    @@genre_count={}

    def self.count
        @@count 
        #returns no. of songs created
    end
    def self.genres
        @@genres.uniq
        # returns an arrat of genres of all songs only unique ones
    end
    def self.artists
        @@artists.uniq
        # returns an array of existing song's artist only unique artist
        # use the arist class variable 
        # controls for duplicates

    end
    def self.genre_count
        @@genres.tally
        # => {"rap" => 5, "rock" => 1, "country" => 3}
        # loop the genres array and populate hash with key/value pair
        # if genre is added and already exist add +1 instead of creating a new element
    end
    def self.artist_count
        @@artists.tally
        # returns a summary of artist alike genre_count
    end
end


ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems.name

ninety_nine_problems.artist

ninety_nine_problems.genre



# class Album
#     @@album_count = 0
  
#     def initialize
#       @@album_count += 1
#     end
  
#     def self.count
#       @@album_count
#     end
#   end


#   Album.new
#   Album.new
#   Album.count