create database exemplo_segunda_forma_normal;
use exemplo_segunda_forma_normal;

#Vamos usar a CARDINALIDADE
create table pedidos(
	id_pedido int primary key auto_increment,
    nome_produto varchar(255),
    preco double,
    quantidade int,
    id_cliente int,
    constraint FK_id_cliente 								#Pra falar o que que e a nossa Foreing key
    foreign key(id_cliente) references cliente(idcliente)	#fazmeos uma referência a tabela que ela está fazendo relação 
);

create table cliente(
	idcliente int primary key auto_increment,    			#a chave primeira e a 
    nome varchar(150),
    data_nascimento varchar(200),
    cpf varchar(150) unique,
    genero varchar(10)
);

insert into cliente(idcliente, nome, data_nascimento, cpf, genero) values(null, "Gustavo", "06/09/1998", "123.456.789.10", "Masculino");

insert into pedidos(idpedido, nome_produto, preco, quantidade, id_cliente) values(null, "camisa polo", 150.92, 2, 1); ##bota o cadastro do cliente que foi cadastrado no 1##
