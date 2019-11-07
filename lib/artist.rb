class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def self.all_songs
    Song.all
  end
  
  def songs
    self.class.all_songs.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
  
  def self.song_count
    all_songs.count
  end
end