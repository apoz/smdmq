class Ingreso < ActiveRecord::Base
	belongs_to :user
	belongs_to :jornada
	
	validates_presence_of :cantidad
end
