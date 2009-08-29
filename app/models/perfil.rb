class Perfil < ActiveRecord::Base
  module EstadoCivil
    Casado   = 'casado'
    Solteiro = 'solteiro'
    Separado = 'separado'
    Viuvo    = 'viuvo'
  end
  EstadosCivis = {
                  EstadoCivil::Casado => 'Casado',
                  EstadoCivil::Solteiro => 'Solteiro',
                  EstadoCivil::Separado => 'Separado',
                  EstadoCivil::Viuvo => 'Viuvo'
  }

  module Sexo
    Masculino = 'masculino'
    Feminino = 'feminino'
  end
  Sexos = {
            Sexo::Masculino => 'Masculino',
            Sexo::Feminino => 'Feminino'
  }

  Situacao = {
    Sexo::Masculino => {
                          EstadoCivil::Casado => 'Casado',
                          EstadoCivil::Solteiro => 'Solteiro',
                          EstadoCivil::Separado => 'Separado',
                          EstadoCivil::Viuvo => 'Viuvo'
    },
    Sexo::Feminino => {
                  EstadoCivil::Casado => 'Casada',
                  EstadoCivil::Solteiro => 'Solteira',
                  EstadoCivil::Separado => 'Separada',
                  EstadoCivil::Viuvo => 'Viuva'
    }
  }

  belongs_to :user
  validates_presence_of :user, :nome

  has_many :amizades, :dependent => :destroy do
    def adicionar(amigo)
      self.create(:amigo => amigo) if pode_adicionar?(amigo)
    end
    
    def pode_adicionar?(amigo)
      self.select{|amizade| amizade.amigo == amigo}.empty? && (amigo != proxy_owner)
    end
  end
  
  has_many :amigos, :through => :amizades
  
  has_many :amizades_reversas, :class_name => "Amizade", :foreign_key => "amigo_id"  
  has_many :amigos_reversos, :through => :amizades_reversas, :source => :perfil
  has_many :comunidades

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :micro => "50x50" },
                    :url  => "/assets/perfis/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/perfis/:id/:style/:basename.:extension"
  validates_attachment_presence :avatar
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']

  
  before_create :carrega_valores_padrao

  def idade
    ((Date.today.to_time - data_nascimento.to_time) / 1.years).to_i unless data_nascimento.nil?
  end

  def situacao
    (sexo.blank? || estado_civil.blank?) ? '-' : Situacao[sexo][estado_civil]
  end
  
  def ultima_atividade
    user.last_request_at || user.created_at
  end
  
  protected
    def carrega_valores_padrao
      self.sexo ||= Sexo::Masculino
      self.estado_civil ||= EstadoCivil::Solteiro
    end
end
