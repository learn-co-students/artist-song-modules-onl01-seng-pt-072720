module Paramable

    class Artist 
        include Paramable
      end 
      
    class Song 
        include Paramable
    end 

    def to_param
        name.downcase.gsub(' ', '-')
    end
end