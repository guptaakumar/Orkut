require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/perfis/new.html.erb" do
  include PerfisHelper
  
  before(:each) do
    assigns[:perfil] = stub_model(Perfil,
      :new_record? => true,
      :nome => "value for nome",
      :sexo => "value for sexo",
      :estado_civil => "value for estado_civil"
    )
  end

  it "renders new perfil form" do
    render
    
    response.should have_tag("form[action=?][method=post]", perfis_path) do
      with_tag("input#perfil_nome[name=?]", "perfil[nome]")
      with_tag("input#perfil_sexo[name=?]", "perfil[sexo]")
      with_tag("input#perfil_estado_civil[name=?]", "perfil[estado_civil]")
    end
  end
end


