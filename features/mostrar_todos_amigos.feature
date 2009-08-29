Funcionalidade: Mostrar todos os amigos
  Como um perfil
  Desejo ver todos os meus amigos

  Cenário: Na tela do meu perfil quero ter acesso a todos os meus amigos
    Dado que estou logado
    E tenho os amigos:
        |amigo|
	    |user_a|
		|user_b|
    Quando visito a tela de "perfil"
    E clico no link "Mais amigos..."
    Então devo estar na tela de amigos
    E devo ver "user_a"
    E devo ver "user_b"
