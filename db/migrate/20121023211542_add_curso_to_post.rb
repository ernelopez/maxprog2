class AddCursoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :curso, :string
  end
end
