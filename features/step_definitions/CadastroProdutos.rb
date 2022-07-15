Dado('que esteja na tela de cadastro de produtos') do
    @cadastroProduto = CadastroProduto.new
    @cadastroProduto.load
    end
  
  
  Dado('logado como administrador') do
    @login = Login.new
    @login.load
    @login.email.set 'mateus@mateus.com'
    @login.password.set '12345678'
    @login.submit.click
    @cadastroProduto.load
  end
  
  Quando('o usuário preencher os campos {string}, {string}, {string} e {string}') do |string, string2, string3, string4|
    @cadastroProduto.name.set string
    @cadastroProduto.price.set string2
    @cadastroProduto.description.set string3
    @cadastroProduto.quantity.set string4
    @cadastroProduto.btn_cadastrar.click
  end