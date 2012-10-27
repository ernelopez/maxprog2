class AddComentarioToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :comentario, :text
  end
end
