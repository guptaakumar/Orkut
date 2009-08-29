class PerfisController < InheritedResources::Base
  def amigos
    @amigos = Perfil.all
    @amigos.sort! {|x,y| (x.ultima_atividade <=> y.ultima_atividade) * -1}
  end
end
