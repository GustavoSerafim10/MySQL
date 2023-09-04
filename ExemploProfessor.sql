
create database banco_primeira_forma;
use banco_primeira_forma;

create table pessoa(
	id int primary key auto_increment,
    nome varchar(20),
    cpf varchar(14) unique,
    telefone varchar(20),
    logradouro varchar(100),
    estado varchar(2),
    numero_casa varchar(10),
    bairro varchar(50),
    cep varchar(10)
);

insert into pessoa(id, nome, cpf, telefone, logradouro, estado, numero_casa, cep)
values( null, "Gustavo Vinicius", "072.789.787-99", "(61)99878-6732", "Avenida sem fim", "DF", "H12", "Do nunca", "72007-123");