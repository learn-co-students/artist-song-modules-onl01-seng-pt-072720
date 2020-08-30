module Memorable
  module ClassMethods
  
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end
end

module IntanceMethods
  def initialize
    self.class.all << self
  end
end
end