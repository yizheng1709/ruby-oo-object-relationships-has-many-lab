class Artist 
    attr_accessor :name

    def initialize(name)
        @name = name #creating a new artist with a name attribute
    end 

    def add_song(song)
        song.artist = self #artist will add himself as artist; 
    end    #song can be understood as a local variable containing a song instance 

    def add_song_by_name(name)
        song = Song.new(name) #initializing a song (invoking on the Song class, which takes a name argument)
        song.artist = self #setting the new song instance's artist as self 
    end 
        
    def songs #invoking Song's class method all and selecting the ones with artist attribute == to self
        Song.all.select {|song| song.artist == self}
    end 

    def self.song_count #class method because we're looking for all Artists' songs
        Song.all.count  #invoking Song's class method .all and counting the elements
    end 


end 