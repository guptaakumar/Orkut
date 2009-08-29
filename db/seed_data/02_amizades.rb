require File.expand_path(File.dirname(__FILE__) + '/seed_helper')

perfil = User.find_by_username('admin').perfil
Perfil.all.each do |amigo|
  perfil.amizades.adicionar(amigo)
end
