class Song
    @@all = []
    def initialize(name,artist,genre)
        @name = name
        @genre = genre
        @artist = artist
        @@all << self
    end
    attr_accessor :name, :genre, :artist
    def self.all
        @@all
    end
end
    

