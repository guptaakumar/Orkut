require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/perfis/index.html.erb" do
  include PerfisHelper
  
  before(:each) do
    assigns[:perfis] = [
      stub_model(Perfil,
        :nome => "value for nome",
        :sexo => "value for sexo",
        :estado_civil => "value for estado_civil"
      ),
      stub_model(Perfil,
        :nome => "value for nome",
        :sexo => "value for sexo",
        :estado_civil => "value for estado_civil"
      )
    ]
  end

  it "renders a list of perfis" do
    render
    response.should have_tag("tr>td", "value for nome".to_s, 2)
    response.should have_tag("tr>td", "value for sexo".to_s, 2)
    response.should have_tag("tr>td", "value for estado_civil".to_s, 2)
  end
end

