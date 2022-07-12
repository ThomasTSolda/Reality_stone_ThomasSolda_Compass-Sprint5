#language: pt


Funcionalidade: Página do Produto
    SENDO um usúario do Ecommerce ServerestStore
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

Contexto: Estar na página do produto
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    E acessar a página do produto


Cenário: Aumentar a quantidade do produto na lista de compra
    Quando aumentar a quantidade do produto
    E aumentar a quantidade na lista

   Cenário: Detalhes do produto
    Dado que entre em detalhes do produto
    Entao deve mostrar preço, quantidade e descrição do produto


Cenário: Adicionar produto ao carrinho pela PDP
    Quando adicionar produto ao carrinho
    Entao o produto deverá ser adicionado ao carrinho com sucesso