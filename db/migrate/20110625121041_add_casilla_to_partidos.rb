class AddCasillaToPartidos < ActiveRecord::Migration
  def self.up
    add_column :partidos, :casilla, :integer
  end

  def self.down
    remove_column :partidos, :casilla
  end
end
