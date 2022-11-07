
@@count = 0
@@genres = []
@@artists = []
class Song 
    attr_accessor :name, :artist, :genre
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
    
    def self.genres
        @@genres = @@genres.uniq
        return @@genres
    end

    def self.artists
        @@artists = @@artists.uniq
        return @@artists
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end


song1 = Song.new("99 Problems", "Jay-Z", "rap")
song1 = Song.new("99 Problems", "Jay-Z", "pop")
song1 = Song.new("99 Problems", "Jay-Z", "rap")

p Song.genre_count