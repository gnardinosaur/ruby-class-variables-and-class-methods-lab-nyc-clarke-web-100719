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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |el|
            if genre_count.keys.include?(el)
                genre_count[el] += 1
            else
                genre_count[el] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |el|
            if artist_count.keys.include?(el)
                artist_count[el] += 1
            else
                artist_count[el] = 1
            end
        end
        artist_count
    end

end
