class Amizade < ActiveRecord::Base
  belongs_to :perfil
  belongs_to :amigo, :class_name => 'Perfil'

  validates_presence_of :amigo, :perfil
  validates_uniqueness_of :amigo_id, :scope => :perfil_id
  
  def self.amigos_disponiveis(perfil)
    Perfil.all.select {|amigo_potencial| perfil.amizades.pode_adicionar?(amigo_potencial) }
  end
end
