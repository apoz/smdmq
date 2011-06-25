class Jornada < ActiveRecord::Base
 validates :numero, :presence => true
 validates :numero, :uniqueness => true
 
 has_many :partidos
 def name 
      numero 
    end 

end