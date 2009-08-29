class CreateAmizades < ActiveRecord::Migration
  def self.up
    create_table :amizades do |t|
      t.references :perfil
      t.integer :amigo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :amizades
  end
end
