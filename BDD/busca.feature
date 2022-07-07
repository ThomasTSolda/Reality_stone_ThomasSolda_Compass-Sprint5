#language: Portugues


Funcionalidade: Busca
    COMO um usúario do Ecommerce ServerestStore
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

  Contexto: Estar na home
    Dado que esteja na home


  Cenário: Buscar por um produto existente
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    Entao deverão ser retornados resultados na busca


  Esquema do Cenário: Buscar por produto existente
    Quando buscar pelo produto "<produto>"
    Entao deverao ser retornados resultados na busca

    Exemplos:
    |         Produtos          |
    | Logitech MX Vertical      |
    | Recycled Frozen Pizza     |
    | Samsung 60 polegadas      |
    | Awesome Frozen Cheese     |
    | Refined Fresh Sausages    |
    | Bespoke Plastic Chips     | 
    | Luxurious Steel Table     |
    | Handmade Soft Shirt       |
    | Tasty Soft Cheese         |
    | Rustic Granite Sausages   |
    | Awesome Fresh Chips       |
    | Ergonomic Rubber Hat      |


