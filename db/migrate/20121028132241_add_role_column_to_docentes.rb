class AddRoleColumnToDocentes < ActiveRecord::Migration
  def change
    add_column :docentes, :role, :string
  end
end
