class Division < ActiveRecord::Base
	has_many :equipos
	has_many :partidos
	
	validates_presence_of :nombre
	validates_uniqueness_of :nombre
	def name 
      nombre 
    end 
end
