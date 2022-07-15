#language: pt
@CadastroProduto
Funcionalidade: Cadastrar um novo produto
    Como administrador do e-commerce Front - ServeRest
    Quero cadastrar um novo produto 
    Para os usuários poderem comprar

    Contexto: 
        Dado que esteja na tela de cadastro de produtos
        E logado como administrador

    Esquema do Cenário: Validar o cadastro de um novo produto
        Quando o usuário preencher os campos "<Nome:>", "<Preço:>", "<Descrição:>" e "<Quantidade:>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Nome:          |Preço:         |Descrição:                       |Quantidade:            |msg:                                                                         |
        |               |150            |Otima para seu dia a dia    |1000                   |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |
        |Panela         |               |Otima para seu dia a dia    |1000                   |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |
        |Panela         |150            |                            |1000                   |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |
        |Panela         |150            |Otima para seu dia a dia    |                       |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |
        |Panela         |150            |Otima para seu dia a dia    |1000                   |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |