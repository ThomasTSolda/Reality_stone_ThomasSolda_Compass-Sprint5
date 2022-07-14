#language: pt


@SearchProduct
Funcionalidade: Login

@LoginSite
Cenário: logar no site
    Dado que esteja na tela de login
    Então deverá logar no site dados validos
    E ser redirecionado para home do site

@LoadLoginPage
Cenário: Carregar página de login
    Dado que esteja na tela de login
    Então deverá apresentar os campos de login
