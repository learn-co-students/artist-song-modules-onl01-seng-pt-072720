require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all # returns all Artist instances
    @@artists
  end

  def add_song(song) #add single song that is associated with Artist instance
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) } #add many songs to Artist instance
  end

  # def to_param
  #   name.downcase.gsub(' ', '-') #convers its name to a url friendly parameter
  # end
end
