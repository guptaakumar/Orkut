Funcionalidade: Listar comunidades no perfil
	Como um Usuario
	Desejo listar as minhas comunidades 
	
	Cenário: Listar comunidades
	    Dado que estou logado
		E as seguintes comunidades no meu perfil:
		|comunidade|
		|rails|
		|java|
		|xp|
		|scrum|
		|fdd|
		|tdd|
		|ddd|
		|cqc|
		|cucumber|
		Quando visito a tela de "perfil"
		Então devo ver "rails"
		E devo ver "java"
		E devo ver "xp"
		E devo ver "scrum"
		E devo ver "fdd"
		E devo ver "tdd"
		E devo ver "ddd"
		E devo ver "cqc"
		E não devo ver "cucumber"