Funcionalidade: Gerenciar Perfis
  Como um usuário já cadastrado
  Desejo gerenciar meu perfil
  De modo que eu possa atualizar meus dados pessoais

  Contexto: Usuario já cadastrado
    Cenário: Editar perfil
      Dado os seguintes logins:
        |login|password|email|
        |ricardo|almeida|ricardo@almeida.com|
      Quando visito a tela de "editar perfil"
      E cadastro meus dados
      Então visualiso a tela 'Perfil do Usuário'
      E os dados do perfil cadastrados

