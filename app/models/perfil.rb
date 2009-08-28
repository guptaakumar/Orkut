class Perfil < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user, :nome

  def idade
    ((Date.today.to_time - data_nascimento.to_time) / 1.years).to_i
  end
end
