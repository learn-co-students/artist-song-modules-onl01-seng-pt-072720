# module Memorable 
  
#   class Artist 
#     extend Memorable
#   end 
  
#   class Song 
#     extend Memorable
#   end 
  
#   def reset_all
#     all.clear
#   end
  
#   def count
#     all.count
#   end
  
# end 

module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end
 
    def count
      self.all.count
    end
  end
 
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end