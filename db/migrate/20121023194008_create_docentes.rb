class CreateDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.string :user
      t.string :pass
      t.string :name

      t.timestamps
    end
  end
end
