class Song 
    attr_accessor :name, :artist, :genre
    attr_reader :count
    
    @@count
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        @@count =+ 1
        @name = name 
        @artist= artist 
        @genre = genre
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.sort!
        @@genres.tally

    end

    def self.artist_count
        @@artists.sort!
        @@artists.tally
    end

end 