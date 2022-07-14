  Dado('que ja está logado no site') do
    @login = Login.new
    @login.load
    @login.email.set 'sergii8752@uorak.com'
    @login.password.set '12345678'
    @login.submit.click
  end

  Dado('logado no site') do
    @login = Login.new
    @login.load
    @login.email.set 'sergii8752@uorak.com'
    @login.password.set '12345678'
    @login.submit.click
  end

  Dado('que esteja na home') do
    @home = Home.new
    expect(@home).to have_xpath('//*[@id="root"]/div/div/div[1]/div/div[2]/input')
  end

  Então('deverá buscar por produto existente') do
    @home.PesquisarProdutos.set 'Logitech MX Vertical'
    @home.Pesquisar.click
  end

  Então('deverá apresentar a logo do site') do
    expect(@home_page).to have_xpath('//*[@id="navbarTogglerDemo01"]/img')
  end
