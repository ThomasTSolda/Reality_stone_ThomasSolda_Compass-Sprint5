#language: pt
@CadastroAdm
Funcionalidade: Cadastro de administrador
    Como administrador do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro para administrador

    Esquema do Cenário: Validar o cadastro de administrador
        Quando o administrador preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então a mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email     |Digite sua senha |msg                                       |
        |mateus          |mateus@mateus.com    |12345678         |                                          |
        |                |mateus@mateus.com    |12345678         |Nome não pode ficar em branco             |
        |mateus          |                     |12345678         |Email é obrigatório                       |
        |mateus          |mateus@mateus        |12345678         |Email deve ser um email válido            |
        |mateus          |mateus@mateus.com    |                 |Password não pode ficar em branco         |
        |lucas           |mateus@mateus.com    |12345678         |Este email já está sendo usado            |
    
    