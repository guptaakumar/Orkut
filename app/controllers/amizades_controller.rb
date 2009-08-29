class AmizadesController < ApplicationController
  def new
    @amigos_disponiveis = Amizade.amigos_disponiveis(current_user)
  end

  def create
    @amizade = current_user.amizades.build(:amigo_id => params[:amigo_id])
    if @amizade.save
      flash[:notice] = "Amigo adicionado."
    else
      flash[:error] = "Não foi possível adicionar o amigo."
    end
    redirect_to current_user.perfil
  end

  def destroy
    @amizade = current_user.amizades.find(params[:id])
    @amizade.destroy
    flash[:notice] = "Removed friendship."
    redirect_to current_user.perfil
  end
end
