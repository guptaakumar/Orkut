Funcionalidade: Solicitar novas amizades
	Como um Usuario
	Desejo adicionar novos amigos
	
	Cenário: Mostrar o link de mais amigo
	    Dado que estou logado
	    E tem os sequintes perfis cadastrados:
	        |username|
	        |user_1|
	        |user_2|
		E nao tenho nenhum amigo
		Quando visito a tela de "amigos"
		Então devo ver "+ Amigo"
		
	Cenário: Adicionar perfil como amigo
	    Dado que estou logado
	    E tem os sequintes perfis cadastrados:
	        |username|
	        |user_1|
		E nao tenho nenhum amigo
		Quando visito a tela de "amigos"
		E clico no link "+ Amigo"
		Então devo ter uma solicitação de amizade pendente de "user_1"
