#language: Portugues(br)

@regression
@pdp
Funcionalidade: Página do Produto
    SENDO um usúario do 
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiéncia de compra

Contexto: Estar na página do produto
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    E acessar a página do produto

@increase_product_quantity
@increase_product_quantity_only_pdp
Cenário: Aumentar quantidade de produto na PDP
    Quando aumentar a quantidade do produto
    Entao deverá alterar a quantidade exibida na PDP

@increase_product_quantity
@increase_product_quantity_validate_cart
Cenário: Aumentar a quantidade do produto na PDP aumenta no carrinho
    Quando aumentar a quantidade do produto 
    E adicionar o produto ao carrinho
    Entao o produto deverá ser adicionado ao carrinho com a quantidade aumentada

@add_product_to_cart_pdp
Cenário: Adicionar produto ao carrinho pela PDP
    Quando adicionar produto ao carrinho
    Entao o produto deverá ser adicionado ao carrinho com sucesso