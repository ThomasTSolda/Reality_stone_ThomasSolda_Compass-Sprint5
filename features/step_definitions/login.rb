=begin
Dado('que usuário esteja na tela de login') do
  @login = Login.new
  @login.load
end

Quando('usuário informar login e senha corretos') do
  @login.email.set 'sergii8752@uorak.com'
  @login.password.set '12345678'
  expect(@login).to have_xpath('//*[@id="root"]/div/div/form/h1')
end

Então('o sistema deve permitir a autenticação do usuário') do
  @login.submit.click
  expect(@login).to have_xpath('//*[@id="root"]/div/div/div[1]/div/div[2]/input')
end

Quando('informar um email válido') do
  @login.email.set 'sergii8752@uorak.com'
end

Quando('inserir uma Senha válida') do
  @login.password.set '12345678'
end

Então('o sistema deve logar o usuario com sucesso') do
  @login.submit.click
end

Então('redirecionar a home') do
  expect(@login).to have_xpath('//*[@id="root"]/div/div/div[1]/div/div[2]/input')
end
Dado('que esteja na tela de login') do
  @login = Login.new
  @login.load
end

Então('deverá logar no site dados validos') do
  @login.email.set 'sergii8752@uorak.com'
  @login.password.set '12345678'
  @login.submit.click
end

Então('ser redirecionado para home do site') do
  expect(@login).to have_xpath('//*[@id="root"]/div/div/div[1]/div/div[2]/input')
end

Então('deverá apresentar os campos de login') do
  expect(@login).to have :email
  expect(@login).to have :password
end

Quando('preencher algum dos campos de login') do
  @login.email.set 'email@invalido.com'
end

Quando('inserir dados inválidos') do
  @login.email.set 'email@invalido.com'
  @login.password.set 'errado'
end

Então('o sistema deve exibir a "{string}"') do |string|
  expect(@login).to have_content string
end

Então('o sistema deve exibir a {string}') do |string|
  expect(@login).to have_content string
  #se nao existir o conteudo, ele retorna false
end
=end
Dado('que esteja na tela de login') do
  @login = Login.new
  @login.load
end 

Quando('o usuério preencher os campos {string} e {string}') do |string, string2|
  @login.email.set string
  @login.password.set string2
  @login.submit.click
end

Então('mensagem é exibida {string}') do |string|
  expect(@login).to have_content string
   
end

Quando('o usuário preencher campo {string} e NÃO preencher campo {string}') do |string, string2|
  @login.email.set string
  @login.submit.click
  #@login.password.set string2
   
end


Quando('o usuário preencher campo {string} e {string}') do |string, string2|
  @login.email.set string
  @login.password.set string2
  @login.submit.click

end