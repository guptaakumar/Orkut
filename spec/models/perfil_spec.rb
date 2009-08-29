require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Perfil do
  should_belong_to :user
  should_validate_presence_of :user, :nome

  should_have_many :amizades
  should_have_many :amigos, :through => :amizades

  should_have_many :amizades_reversas, :class_name => "Amizade", :foreign_key => "amigo_id"  
  should_have_many :amigos_reversos, :through => :amizades_reversas, :source => :perfil
  should_have_attached_file(:avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :micro => "50x50" },
                    :url  => "/assets/perfis/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/perfis/:id/:style/:basename.:extension")
  should_have_many :comunidades
  
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

  before(:all) do
    @admin = Factory(:user_admin).perfil
    @perfil_a = Factory(:user_a).perfil
    @perfil_b = Factory(:user_b).perfil
  end
  it "deve começar sem nenhuma amizade" do
    @admin.amizades.should be_empty
  end
  
  it "deve permitir a inclusao de novos amigos a um perfil vazio" do
    @admin.amizades.pode_adicionar?(@perfil_a).should be_true
  end

  it "não deve permitir a inclusao do perfil como amigo dele mesmo" do
    @admin.amizades.pode_adicionar?(@admin).should be_false
  end
  
  it "deve retornar as comunidades ordenadas pela última atividade" do
    @perfil_a.comunidades.ultimas_atividades_das_comunidades.should_not be_nil
  end
end
