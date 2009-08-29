class Perfil < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user, :nome

  has_many :amizades
  has_many :amigos, :through => :amizades
end
