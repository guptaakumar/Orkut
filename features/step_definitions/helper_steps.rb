Dado /^que estou logado$/ do
  user = Factory(:user_admin)
  visit 'login'
  fill_in('Username', :with => user.username)
  fill_in('Password', :with => user.username)
  click_button "Enviar"
  @perfil_atual = user.perfil
end

Dado /^tenho os amigos:$/ do |amigos|
  amigos.hashes.each do |hash|
    @perfil_atual.amizades.adicionar(User.create!(:username => hash[:amigo], 
    :email => "#{hash[:amigo]}@gonow.com", :password => "asdasd", 
    :password_confirmation => "asdasd").perfil)
  end
end

