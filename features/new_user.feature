Funcionalidade: Criar novo usuario
  Como um usuário
  Desejo me cadastrar no sistema

  Cenário: Criar novo usuario
    Dado que não estou logado
    E que não estou logado
    Quando visito a tela de "novo usuario"
    E preencho o campo "Username" com "ricardo"
    E preencho o campo "Email" com "ricardo@almeida.com"
    E preencho o campo "Password" com "almeida"
    E preencho o campo "Password confirmation" com "almeida"
    E clico no botão "Submit"
    Então deve ser criado o usuário "ricardo"
    E devo estar na tela de perfil
    E devo ver "Registration successful."

