class CreateIngresos < ActiveRecord::Migration
  def self.up
    create_table :ingresos do |t|
      t.integer :user_id
      t.decimal :cantidad, :precision => 8, :scale => 2
      t.date :fecha

      t.timestamps
    end
  end

  def self.down
    drop_table :ingresos
  end
end
