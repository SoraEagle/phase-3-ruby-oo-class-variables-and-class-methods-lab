class Song
    attr_accessor :name, :artist, :genre

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres = @@genres.push @genre
        @@artists = @@artists.push @artist
    end

    @@count = 0
    @@genres = [] # returns only UNIQUE genres
    @@artists = [] # same as @@genres

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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end


# Song class methods .genre_count is a class method that returns a hash of genres and the number of songs that have those genres