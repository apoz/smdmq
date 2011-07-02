class AddJornadaIdToIngresos < ActiveRecord::Migration
  def self.up
    add_column :ingresos, :jornada_id, :integer
  end

  def self.down
    remove_column :ingresos, :jornada_id
  end
end
