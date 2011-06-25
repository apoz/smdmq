class Partido < ActiveRecord::Base
	belongs_to :division
	belongs_to :local, :class_name => "Equipo", :foreign_key => "local"
	belongs_to :visitante, :class_name => "Equipo", :foreign_key => "visitante"
	belongs_to :jornada
	
	validates :division_id, :presence => true
	validates :jornada_id, :presence => true
	validates :local, :presence => true
	validates :visitante, :presence => true
end
