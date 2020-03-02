class Genre
  attr_accessor :name, :genre, :song

  @@all = []

  def initialize (name)
    @name = name
    save
  end
  def self.all
    @@all
  end
  def save
    @@all << self if !@@all.include?(name)
  end
  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    songs.collect {|song| song.artist}
  end
end