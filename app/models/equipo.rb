class Equipo < ActiveRecord::Base
	belongs_to :division
	has_many :partidolocal, :class_name => "Partido" , :foreign_key => "local"
	
	has_many :partidovisitante, :class_name => "Partido", :foreign_key => "visitante"
	  
	validates_presence_of :nombre, :division_id
	validates_uniqueness_of :nombre
	def name 
      nombre 
    end 
end
