Dado /^nao tenho nenhum amigo$/ do
  @perfil_atual.amizades.destroy_all
end

Então /^devo ter uma solicitação de amizade pendente de "([^\"]*)"$/ do |nome_amigo|
  novo_amigo = Perfil.find_by_nome(nome_amigo)
  @perfil_atual.amizades.should include(novo_amigo)
end

