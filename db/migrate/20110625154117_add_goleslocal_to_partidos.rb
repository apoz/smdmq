class AddGoleslocalToPartidos < ActiveRecord::Migration
  def self.up
    add_column :partidos, :goleslocal, :integer
  end

  def self.down
    remove_column :partidos, :goleslocal
  end
end
