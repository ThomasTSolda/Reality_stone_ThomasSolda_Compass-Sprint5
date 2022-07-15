#language: pt
@CompleteLogin
Funcionalidade: Login de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar login 
    Para usar a aplicação

    Contexto: 
        Dado que esteja na tela de login

    Esquema do Cenário: Validar o login de usuários
        Quando o usuério preencher os campos "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email      |Digite sua senha |msg                                    |
        |                      |123456           |Email é obrigatório                    |
        |thomas@thomas         |123456           |Email deve ser um email válido         |
        |thomas@thomas.com     |                 |Password não pode ficar em branco      |
        |thomas@thomas.com     |1234             |Email e/ou senha inválidos             |
        |thomas@thomas.com     |123456           |                                       |
                                       
#
#    Cenário: fazer login na mesma conta após logout
#        Dado que esteja na tela de login
#       Quando o usuário preencher campo "<Digite seu email>" e NÃO preencher campo "<Digite sua senha>"
#       Então mensagem é exibida "<msg>"
#       Exemplos:
#       |Digite seu email      |Digite sua senha |msg                     |
#       |thomas@thomas.com     |                 |Password é obrigatório  |
#       |thomas@thomas.com     |                 |Password é obrigatório  |
