class Song 
  require "pry"
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def Song.create
    song = Song.new
    @@all << song
    song
    
  end 
  
  def Song.new_by_name(new_song)
    song = Song.new
    song.name = new_song
    @@all << song
    song 
  end 
  
  def Song.create_by_name(new_song)
    song = Song.new
    song.name = new_song
    @@all << song 
    song 
  end 
  
  def Song.find_by_name(input)
    @@all.find {|x| x.name == input}
  end 
  
  def Song.find_or_create_by_name(input)
    if Song.find_by_name(input)
      Song.find_by_name(input)
    else
      Song.create_by_name(input)
    end
  end 
  
  def Song.alphabetical
    @@all.sort_by{|song| song.name}
  end 
  
  def Song.new_from_filename(filename)
    filename = filename.split(/[.-]/)
    songname = filename[1].strip
    artistname = filename[0].strip
    song = Song.new
    song.name = songname
  end 
  
  def Song.create_from_filename
  end
  
  def Song.destroy_all
    @@all = []
  end 
    
  
  def save
    self.class.all << self
  end
  
  
  

end
