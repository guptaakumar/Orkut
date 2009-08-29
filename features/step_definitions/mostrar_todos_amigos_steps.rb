Dado /^que estou logado$/ do
  user = Factory(:user_admin)
  visit 'login'
  fill_in('Username', :with => user.username)
  fill_in('Password', :with => user.username)
  click_button "Enviar"
  @perfil_atual = user.perfil
end

Então /^devo ver meus amigos ordenados pelo login mais recente$/ do
  pending
end
