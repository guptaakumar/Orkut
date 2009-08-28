class User < ActiveRecord::Base
  acts_as_authentic
  has_one :perfil

  after_create :cria_perfil

  def cria_perfil
    self.create_perfil :nome => username
  end
end
