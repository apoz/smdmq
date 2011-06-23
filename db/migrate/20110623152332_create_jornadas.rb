class CreateJornadas < ActiveRecord::Migration
  def self.up
    create_table :jornadas do |t|
      t.integer :numero
      t.date :fecha
      t.integer :finalizada, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :jornadas
  end
end
