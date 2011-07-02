class Jornada < ActiveRecord::Base
 validates :numero, :presence => true
 validates :numero, :uniqueness => true
 
 has_many :partidos
 has_one :ingreso
 def name 
      numero 
    end 

end