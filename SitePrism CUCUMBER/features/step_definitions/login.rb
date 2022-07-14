Dado('que usuário esteja na tela de login') do
    @login = Login.new
    @login.load
  end
  
  Quando('usuário informar login e senha corretos') do
    @login.email.set 'sergii8752@uorak.com'
    @login.password.set '12345678'
  end
  
  Então('o sistema deve permitir a autenticação do usuário') do
    expect(@login).to have_xpath('//*[@id="root"]/div/div/div[1]/div/div[2]/input')
  end
  
  Quando('informar um email válido') do
    @login.email.set 'sergii8752@uorak.com'
    @login.password.set '12345678'
  end
  
  Quando('inserir uma Senha válida') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('o sistema deve logar o usuario com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('redirecionar a home') do
    pending # Write code here that turns the phrase above into concrete actions
  end