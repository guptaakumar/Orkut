class Amizade < ActiveRecord::Base
  belongs_to :perfil
  belongs_to :amigo, :class_name => 'Perfil'

  validates_presence_of :amigo, :perfil
end
