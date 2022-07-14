#language: pt
@CompleteLogin

Funcionalidade: realizar login no e-commerce front serverest
    COMO usuário do ecommerce front serverest
    QUERO realizar login no e-commerce 
    PARA poder acessar as funcionalidades do e-commerce front serverest

    Contexto: Estar na tela de login
        Dado que usuário esteja na tela de login

    Cenário: Logar na aplicação
    Quando usuário informar login e senha corretos
    Então o sistema deve permitir a autenticação do usuário
    
    Esquema do Cenário: realizar login no sistema com usuários válidos
        Quando informar um email válido
        E inserir uma Senha válida
        Então o sistema deve logar o usuario com sucesso
        E redirecionar a home

    Exemplos:
        | email                 | Senha  | mensagem                 |
        | "Piva@piva.com"       | "0001" | redirecionar a home      |
        | "Gustavo@gustavo.com" | "0004" | redirecionar a home      |
        | "Jhonny@jhonny.com"   | "0006" | redirecionar a home      |
    
    Esquema do Cenário: realizar login no sistema campos inválidos
        Quando preencher algum dos campos de login
        E inserir dados inválidos
        Então o sistema deve exibir a "<mensagem>"

        Exemplos:
        | email                 | Senha      | mensagem                            |
        | ""                    | "0001"     | "Email não pode ficar em branco"    |
        | "Gustavo@gustavo.com" | ""         | "Password não pode ficar em branco" |
        | "email@invalido.com"  | "0006"     | "Email deve ser um email válido"    |
        | "email@valido.com"    | "invalida" | "Email e/ou senha inválidos"        |
