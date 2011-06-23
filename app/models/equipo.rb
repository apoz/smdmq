class Equipo < ActiveRecord::Base
	belongs_to :division
	
	validates_presence_of :nombre, :division_id
	validates_uniqueness_of :nombre
end
