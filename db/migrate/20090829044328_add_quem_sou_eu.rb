class AddQuemSouEu < ActiveRecord::Migration
  def self.up
    add_column :perfis, :descricao, :text
  end

  def self.down
    remove_column :perfis, :descricao
  end
end
