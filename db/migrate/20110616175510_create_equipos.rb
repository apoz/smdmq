class CreateEquipos < ActiveRecord::Migration
  def self.up
    create_table :equipos do |t|
      t.string :nombre
      t.string :escudo
      t.integer :division_id

      t.timestamps
    end
  end

  def self.down
    drop_table :equipos
  end
end
