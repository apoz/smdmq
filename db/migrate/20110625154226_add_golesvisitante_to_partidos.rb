class AddGolesvisitanteToPartidos < ActiveRecord::Migration
  def self.up
    add_column :partidos, :golesvisitante, :integer
  end

  def self.down
    remove_column :partidos, :golesvisitante
  end
end
