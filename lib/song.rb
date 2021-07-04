require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  
  attr_accessor :name, :artist

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end
end
