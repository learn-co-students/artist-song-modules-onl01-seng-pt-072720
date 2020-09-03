module Findable
 @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    # all << self
  end
 
  # def all
  #   @@all
  # end

  def find_by_name(name)
    self.all.detect {|a| a.name == name}
  end

end