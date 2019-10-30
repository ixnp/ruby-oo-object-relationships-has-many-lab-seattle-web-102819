require 'pry'
class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @all
    end

    #adds exsisting song to artist 
    #by assgining the value of the songs artist
    #to this instance of the aritst
    def add_song(song)
        song.artist = self
    end 

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def songs 
        Song.all.select do |song|
            song.artist == self
        end
    end

    def self.song_count
        Song.all.count
    end 
end

