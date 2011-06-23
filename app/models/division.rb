class Division < ActiveRecord::Base
	has_many :equipos
	
	validates_presence_of :nombre
	validates_uniqueness_of :nombre
	def name 
      nombre 
    end 
end
