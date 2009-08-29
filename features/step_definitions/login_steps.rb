Dado /^os seguintes logins:$/ do |table|
  table.hashes.each do |hash|
    User.create! :username => hash["login"], :password => hash["password"], :password_confirmation => hash["password"],
      :email => hash["email"]
  end
end

Então /^devo estar logado$/ do
  pending
end

Então /^não devo estar logado$/ do
  pending
end

Então /^deve carregar o usuário "([^\"]*)"$/ do |nome_usuario|
  @perfil_atual = User.find_by_username(nome_usuario).perfil
end

