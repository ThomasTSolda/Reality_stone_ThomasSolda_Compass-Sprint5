#language: Portuguese 

Funcionalidade: login
    Como usúario do sistema
    Quero entrar no e-commerce
    Para realizar compras 

    Contexto:
        Dado que esteja na pagina de login
    
    Esquema do Cenário: validar login do usúario
        Quando prencher "<email>" e "<senha>"
        Entao é exibido "<msg>"
        Exemplos:
        |       email       |   senha    |          msg              |
        | teste@teste.com   |            |  Senha é Obrigatória      |
        | teste@teste       | 12345678   |  Deve ser um email valido |
        | teste@teste.com   | 12345678   |  Login feito com sucesso  |
        