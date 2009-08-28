Funcionalidade: Login
  Como um usuário
  Desejo logar no sistema
  De modo que eu possa acessar minha tela de perfil

  Contexto:
    Dado os seguintes logins:
      |login|password|email|
      |ricardo|almeida|ricardo@almeida.com|
    Quando visito a tela de "login"
    E preencho o campo "Username" com "ricardo"

      Cenário: Usuario logado com sucesso
        Quando preencho o campo "Password" com "almeida"
        E clico no botão "Enviar"
        Então devo estar na tela de perfil

      Cenário: Usuario inválido
        Quando preencho o campo "Password" com "teste123"
        E clico no botão "Enviar"
        Então devo ver "Password is not valid"

