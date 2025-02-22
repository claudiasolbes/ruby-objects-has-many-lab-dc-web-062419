require "pry"

class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

def add_song_by_name(song_name)
  new_song = Song.new(song_name)
  new_song.artist = self
end

  def self.song_count
    Song.all.size
  end

end
