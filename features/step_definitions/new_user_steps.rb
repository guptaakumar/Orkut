Dado /^que não estou logado$/ do
  visit 'logout'
end

Então /^deve ser criado o usuário "([^\"]*)"$/ do |nome_novo_usuario|
  @perfil_atual = User.find_by_username(nome_novo_usuario).perfil
end

