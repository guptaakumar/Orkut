Funcionalidade: Login
  Como um usuário
  Desejo logar no sistema
  De modo que eu possa acessar minha tela de perfil

  Cenário: Usuario não logado
    Dado os seguintes logins:
    |login|password|email|
    |ricardo|almeida|ricardo@almeida.com|
    E que eu não estou logado
    E visito a tela de login
    Quando preencho o campo "login" com "ricardo"
    E preencho o campo "password" com "almeida"
    E clico no botão "Submit"
    Então devo estar logado

    Dado os seguintes logins:
    |login|password|email|
    |ricardo|almeida|ricardo@almeida.com|
    E que eu não estou logado
    E visito a tela de login
    Quando preencho o campo "login" com "ricardo"
    E preencho o campo "password" com "teste123"
    E clico no botão "Submit"
    Então não devo estar logado
    E devo ver "Password is not valid"

