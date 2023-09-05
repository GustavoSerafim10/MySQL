#Você tem uma tabela "Vendas" com os seguintes atributos: Número da Venda
#(chave primária), Produto Vendido, Nome do Vendedor, Departamento do Vendedor e
#Cidade do Cliente. Avalie se esta tabela está em 2FN ou não e explique por quê.

create table Vendas(
	Numero_venda int primary key auto_increment,
    ProdutoVendido varchar(212),
    Departamento_vendedor varchar(123),
    Cidade_cliente varchar(50)
);

#Reposta
#Essa tabela não está em 2FN, pois será necessário fazer a criação de duas tabelas,
#bom seria interessante a criação de uma para "vendedores", com pequenos atributos tanto para "nome do vendedor" - "departamento do vendedor
