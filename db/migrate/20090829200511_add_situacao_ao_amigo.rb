class AddSituacaoAoAmigo < ActiveRecord::Migration
  def self.up
    add_column :amizades, :situacao, :string
  end

  def self.down
    remove_column :amizades, :situacao
  end
end
