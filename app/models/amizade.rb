class Amizade < ActiveRecord::Base
  module Situacao
    Pendente = 'pendente'
    Aprovada = 'aprovada'
  end

  Situacoes = {
    Situacao::Pendente => 'Pendente',
    Situacao::Aprovada => 'Aprovada'
  }

  belongs_to :perfil
  belongs_to :amigo, :class_name => 'Perfil'

  validates_presence_of :amigo, :perfil
  validates_uniqueness_of :amigo_id, :scope => :perfil_id
  
  before_create :carrega_valores_padrao
  
  def self.amigos_disponiveis(perfil)
    Perfil.all.select {|amigo_potencial| perfil.amizades.pode_adicionar?(amigo_potencial) }
  end
  
  private
    def carrega_valores_padrao
      self.situacao ||= Situacao::Pendente
    end
end
