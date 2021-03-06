class Artist

  attr_accessor :name, :artist, :genre
  attr_reader

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.collect {|song| song.genre}
  end
end