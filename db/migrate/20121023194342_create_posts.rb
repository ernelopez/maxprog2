class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :obra
      t.string :autor1
      t.string :autor2
      t.string :autor3
      t.string :autor4
      t.date :fecha
      t.string :file
      t.text :codigo
      t.integer :escuela_id
      t.integer :docente_id

      t.timestamps
    end
  end
end
