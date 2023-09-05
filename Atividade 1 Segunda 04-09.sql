#Atividade 1
#Considere uma tabela de banco de dados chamada "Pedidos" com os seguintes
#atributos: ID do Pedido (chave primária), Nome do Cliente, Endereço do Cliente
#e Produto do Pedido. Explique se esta tabela está em 2FN ou não, e justifique sua resposta

create table Pedidos(
	idpedido int primary key auto_increment,
    Nome_cliente varchar(249),
    Endereco_cliente varchar(222),
    Produto_Pedido varchar(221)
);


#RESPOSTA

#A tabela "pedidos" ela não se encontra na segunda forma normal(2FN), devido ser necessário 
#do atributo "Produto do Pedido" em relação a chave primária
#Caso fosse necessário teria que separar em duas tabelas, como foi feito um exemplo do professor.