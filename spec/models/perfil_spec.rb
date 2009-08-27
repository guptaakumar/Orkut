require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Perfil do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome",
      :data_nascimento => Date.today,
      :sexo => "value for sexo",
      :estado_civil => "value for estado_civil"
    }
  end

  it "should create a new instance given valid attributes" do
    Perfil.create!(@valid_attributes)
  end
end
