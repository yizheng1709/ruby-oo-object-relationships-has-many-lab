class Song
    attr_accessor :name, :artist 
    @@all = [] 

    def initialize(name) #creating a new instance of itself 
        self.name = name #setting own name
        @@all << self  #adding self to class list of all songs
    end 

    def self.all
        @@all
    end 

    def artist_name 
        if self.artist 
            self.artist.name
        end 
    end 

end 