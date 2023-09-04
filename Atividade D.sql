#Você está projetando um banco de dados para um sistema de gerenciamento
#de vendas de uma loja de eletrônicos. Crie uma tabela chamada "Produtos" na
#Primeira Forma Normal (1FN) para armazenar informações sobre os produtos
#que a loja vende. A tabela deve incluir pelo menos os seguintes campos: ID do
#produto, nome do produto, categoria do produto, quantidade e preço.


CREATE TABLE Produtos (
    id_produto int primary key,
    Nome_Produto VARCHAR(60),
    Categoria VARCHAR(70),
    Quantidade int,
    Preco double(10, 2)
);

insert into Produtos (id_Produto, Nome_Produto, Categoria, Quantidade, Preco) values (1, 'PocoF1', 'Smartphones', 50, 569.99);
insert into Produtos (id_Produto, Nome_Produto, Categoria, Quantidade, Preco) values (2, 'IPHONE', 'Smartphones', 10, 5.000);