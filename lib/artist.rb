class Artist

    attr_accessor :name, :artist, :songs, :post

    def initialize(name)
        @name = name
        @artist = artist
        @songs = []
    end

    def songs 
        Song.all.select {|song| song.artist == self}
    end 

    def add_song(song)
        @songs << song
        song.artist = self
    end 
    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end
    def self.song_count
        Song.all.count
    end

   
    # def songs
    #     @songs
    # end
 
end