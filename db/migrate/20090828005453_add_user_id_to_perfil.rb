class AddUserIdToPerfil < ActiveRecord::Migration
  def self.up
    add_column :perfis, :user_id, :integer
  end

  def self.down
    remove_column :perfis, :user_id
  end
end
