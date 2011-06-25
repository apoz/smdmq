class CreatePartidos < ActiveRecord::Migration
  def self.up
    create_table :partidos do |t|
      t.integer :jornada_id
      t.integer :division_id
      t.integer :local
      t.integer :visitante
      t.integer :resultado
      t.string :marcador
      t.integer :finalizado

      t.timestamps
    end
  end

  def self.down
    drop_table :partidos
  end
end
