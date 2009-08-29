class Amizade < ActiveRecord::Base
  belongs_to :perfil
  belongs_to :amigo, :class_name => 'Perfil'

  validates_presence_of :amigo, :perfil
  validates_uniqueness_of :amigo, :scope => :perfil
end
