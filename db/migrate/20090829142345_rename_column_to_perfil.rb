class RenameColumnToPerfil < ActiveRecord::Migration
  def self.up
    remove_column :comunidades, :profile_id
    add_column :comunidades, :perfil_id, :integer
  end

  def self.down
    add_column :comunidades, :profile_id, :integer
    remove_column :comunidades, :perfil_id
  end
end
