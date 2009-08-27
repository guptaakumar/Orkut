require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/perfis/show.html.erb" do
  include PerfisHelper
  before(:each) do
    assigns[:perfil] = @perfil = stub_model(Perfil,
      :nome => "value for nome",
      :sexo => "value for sexo",
      :estado_civil => "value for estado_civil"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ nome/)
    response.should have_text(/value\ for\ sexo/)
    response.should have_text(/value\ for\ estado_civil/)
  end
end

