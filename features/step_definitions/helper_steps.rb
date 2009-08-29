Dado /^que estou logado$/ do
  user = Factory(:user_admin)
  visit 'login'
  fill_in('Username', :with => user.username)
  fill_in('Password', :with => user.username)
  click_button "Enviar"
  @perfil_atual = user.perfil
end

Dado /^tenho os amigos:$/ do |amigos|
  cadastra_users(amigos.hashes, :amigo).each do |user|
    @perfil_atual.amizades.adicionar(user.perfil)
  end
end

Dado /^tem os sequintes perfis cadastrados:$/ do |table|
  cadastra_users(table.hashes, :username)
end

def cadastra_users(hashes, key)
  hashes.map do |hash|
    User.create!(:username => hash[key], 
      :email => "#{hash[key]}@gonow.com", :password => "asdasd", 
      :password_confirmation => "asdasd")
  end
end

