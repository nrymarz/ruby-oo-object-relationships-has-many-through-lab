class Artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_reader :name
    def self.all
        @@all
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def new_song(song,genre)
        Song.new(song,self,genre)
    end
    def genres
        self.songs.collect{|song| song.genre}.uniq
    end
end