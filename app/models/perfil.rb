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

  has_many :amizades
  has_many :amigos, :through => :amizades

  def idade
    ((Date.today.to_time - data_nascimento.to_time) / 1.years).to_i unless data_nascimento.nil?
  end

  def situacao
    (sexo.blank? || estado_civil.blank?) ? '-' : Situacao[sexo][estado_civil]
  end
end
