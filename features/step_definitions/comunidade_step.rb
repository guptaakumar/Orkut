Dado /^as seguintes comunidades no meu perfil:$/ do |table|
  table.hashes.each do |hash|
    @perfil_atual.comunidades << (Comunidade.create! :nome => hash[:comunidade])
  end
end