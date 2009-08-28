Given /^que eu não estou cadastrado$/ do
  Perfil.destroy_all
end

Given /^Usuario já cadastrado$/ do
  User.create! :username => "ricardo", :email => "ricardo@gmail.com", :password => "almeida", :password_confirmation => "almeida"
end

When /^cadastro meus dados$/ do
  visit perfis_path
  fill_in "Nome"
  fill_in "Data Nascimento"
  fill_in "Login"
  check "Male"
  click_button "Save"
end

Then /^visualiso a tela '(.+)' e os dados do perfil cadastrados$/ do |title|
  response.should contain title
end
