Given /^que eu não estou cadastrado$/ do
  Profile.destroy_all
end

When /^cadastro meus dados$/ do
  visit profile_path
  fill_in "Name"
  fill_in "Last Name"
  fill_in "Login"
  check "Male"
  click_button "Save"
end

Then /^visualiso a tela '(.+)' e os dados do perfil cadastrados$/ do |title|
  response.should contain title
end

