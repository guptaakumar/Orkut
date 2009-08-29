require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Amizade do
  should_belong_to :perfil
  should_belong_to :amigo, :class_name => 'Perfil'

  should_validate_presence_of :amigo, :perfil
  
  #should_validate_uniqueness_of :amigo_id, :scope => :perfil

  before :each do  
    User.destroy_all
    user_a = Factory(:user_a)
    user_b = Factory(:user_b)
  end

  it "deve ter o status Pendente quando é criada" do
    amizade = user_a.perfil.amizades.adicionar(user_b.perfil)
    amizade.situacao.should == Amizade::Situacao::Pendente
  end
end
