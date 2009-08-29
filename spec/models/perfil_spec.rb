require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Perfil do
  should_belong_to :user
  should_validate_presence_of :user, :nome

  should_have_many :amizades
  should_have_many :amigos, :through => :amizades

  it "deve calcular a idade" do
    anos_atras = 5
    ano_nascimento = Date.today.year - anos_atras
    data_nascimento = Date.new(ano_nascimento, Date.today.month, Date.today.day)
    perfil = Perfil.new :data_nascimento => data_nascimento
    perfil.idade.should == anos_atras - 1
  end

  it "deve retornar a situação de acordo com o estado civil e o sexo" do
    perfil = Perfil.new :estado_civil => Perfil::EstadoCivil::Solteiro, :sexo => Perfil::Sexo::Feminino
    perfil.situacao.should == Perfil::Situacao[Perfil::Sexo::Feminino][Perfil::EstadoCivil::Solteiro]
  end
end
