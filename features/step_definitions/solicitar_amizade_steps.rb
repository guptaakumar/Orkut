Dado /^tem os sequintes perfis cadastrados:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending
end

Dado /^nao tenho nenhum amigo$/ do
  @perfil_atual.amizades.destroy_all
end

