require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Perfil do
  should_belong_to :user
  should_validate_presence_of :user, :nome

  it "should return perfil's age" do
    anos_atras = 5
    ano_nascimento = Date.today.year - anos_atras
    data_nascimento = Date.new(ano_nascimento, Date.today.month, Date.today.day)
    perfil = Perfil.new :data_nascimento => data_nascimento
    perfil.idade.should == anos_atras - 1
  end
end
