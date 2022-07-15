#language: pt
@Cadastro
Funcionalidade: Cadastro de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro

    Esquema do Cenário: Validar o cadastro de usuários
        Quando o usuário preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então a mensagem  é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email          |Digite sua senha |msg                                   |               
        |                |thomas@thomas.com         |123456           |Nome não pode ficar em branco         |
        |thomas          |                          |123456           |Email é obrigatório                   |
        |thomas          |thomas@thomas             |123456           |Email deve ser um email válido        |
        |thomas          |thomas@thomas.com         |                 |Password não pode ficar em branco     |
        |thomas          |thomas@thomas.com         |123456           |Já é cadastrado?Entrar                |
        |joao            |thomas@thomas.com         |123456           |Este email já está sendo usado        |                                                     
    
    
