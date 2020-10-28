class Genre
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name
    def songs
        Song.all.select {|song| song.genre == self}
    end
    def add_song(song,artist)
        song = Song.new(song,artist,self)
        song.artist = artist
    end
    def self.all
        @@all
    end
    def artists
        self.songs.collect{|song| song.artist}.uniq
    end
end