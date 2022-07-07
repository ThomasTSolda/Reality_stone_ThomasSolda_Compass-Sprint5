#language: Portuguese

Funcionalidade: Cadastro de usúario
    Como usúario do e-commerce Front - ServerRest
    Quero realizar cadastro no site Front - ServerRest
    Para fazer login no site Front - ServerRest

    Contexto:
        Dado que esteja na pagina de cadastro
    
    Esquema do Cenário: validar o cadastro de usúario
        Quando prencher "<nome de usúario>", "<email>" e "<senha>"
        Entao é exibida mensagem "<msg>"
        Exemplos:
        | nome de usúario    |     email         |     senha     |             msg                   |
        |                    |  teste@teste.com  |    12345678   |    Usúario é Obrigatória          |
        |      Joao          |  teste@teste.com  |               |    Senha é Obrigatória            |
        |      Joao          |  teste@teste      |    12345678   |    Deve ser um email valido       |
        |      Joao          |  teste@teste.com  |    12345678   |    Cadastro realizado com sucesso |

    Cenário: Após email ja cadastrado
        Dado que esteja na página de cadastro
        Quando prencher "<email>"
        Entao é exibida mensagem "<msg>"
        Exemplos:
        |Digite seu nome | email                   | senha    | msg                            |
        | Thomas         | aduanich1477@uorak.com  | 12345678 | Este email ja esta sendo usado |
        
