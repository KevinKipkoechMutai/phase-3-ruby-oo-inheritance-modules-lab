require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  include Paramable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  @@all = []

  def initialize
    @@all << self
    @songs = []
  end

  
  def self.all
    @@all
  end

  # def self.reset_all
  #   self.all.clear
  # end

 

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
