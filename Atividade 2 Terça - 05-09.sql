#Você tem uma tabela "Encomendas" com os seguintes atributos: Número da
#Encomenda (chave primária), ID do Cliente, Nome do Cliente, e Cidade de
#Entrega. Avalie se esta tabela está em 3FN ou não e explique seu raciocínio.

#resposta:
#Para alcançar a 3FN, teria que ser criada 2 tabelas separadas no caso, uma diretamente para cliente e outra para encomendas

create table clientes(
	IdCliente int primary key,
    NomeCliente varchar(30),
    CidadeEntrega varchar(50)
);

create table Encomendas(
	NumeroEncomenda int primary key,
    IdCliente int,
    foreign key(IdCliente) references clientes(IdCliente)
);

insert into clintes(Idcliente, NomeCliente, CidadeEntrega) values(431, "Gustavo", "Brasília"),(101, "Joao", "Papuda");

insert into Encomendas(NumeroEncomenda, IdCliente) values(1,431), (2,101), (3,431);