When /^cadastro meus dados$/ do
  fill_in "Nome", :with => "Ricardo"
  select_date "2005-07-24"
  choose "perfil_sexo_masculino"
  fill_in "Estado civil", :with => "Solteiro"
  click_button "Update"
end

Then /^visualiso a tela '(.+)'$/ do |title|
  response.should contain title
end

Then /^os dados do perfil cadastrados$/ do
  response.should contain "Ricardo"
  response.should contain "Idade"
  response.should contain "Masculino"
  response.should contain "Solteiro"
end
