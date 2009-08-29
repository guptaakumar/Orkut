Funcionalidade: Solicitar novas amizades
	Como um Usuario
	Desejo adicionar novos amigos
	
	Cenário: Adicionar amigo
	    Dado que estou logado
	    E tem os sequintes perfis cadastrados:
	        |username|
	        |user_1|
	        |user_2|
		E nao tenho nenhum amigo
		Quando visito a tela de "amigos"
		Então devo ver "+ amigos"
