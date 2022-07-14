class Products < SitePrism::Section
    element :name, 'card-title negrito'
    element :price, 'card-subtitle mb-2 text-muted'
end

class Home < SitePrism::Page
    set_url '/'
    elements :search_field, 'input[type="text"]'
    element :Pesquisar, '#search-button'
end

class Login < SitePrism::Page
    set_url'/login'
    element :email, '#email'
    element :password, '#password'
    element :submit, 'button[type="submit"]'
end

class Register < SitePrism::Page
    set_url'/cadastrarusuarios'
end

class Cadastro < SitePrism::Page
    element :nome, '#nome'
    element :email, '#email'
    element :password, '#password'
end
