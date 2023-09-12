create database banco_join;
use banco_join;

create table Pessoa(
	id int primary key auto_increment,
    nome varchar(50),
    data_nascimento date
);

create table Endereco(
	id int primary key auto_increment,
    pessoa_id int unique,
    rua varchar(100),
    cidade varchar(50),
    estado varchar(50),
    foreign key (pessoa_id) references Pessoa(id)
);

create table Telefone(
	id int primary key auto_increment,
    pessoa_id int,
    numero varchar(20),
    tipo varchar(20),
    foreign key (pessoa_id) references Pessoa(id)
);

INSERT INTO Pessoa (nome, data_nascimento) VALUES ('João Silva', '1990-05-15');
INSERT INTO Pessoa (nome, data_nascimento) VALUES ('Maria Santos', '1985-12-10');
INSERT INTO Pessoa (nome, data_nascimento) VALUES ('Pedro Oliveira', '1995-08-22');
INSERT INTO Pessoa (nome, data_nascimento) VALUES ('Ana Souza', '1982-03-30');
INSERT INTO Pessoa (nome, data_nascimento) VALUES ('Carlos Pereira', '1998-07-18');

INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (1, 'Rua A', 'São Paulo', 'SP');
INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (2, 'Rua B', 'Rio de Janeiro', 'RJ');
INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (3, 'Rua C', 'Belo Horizonte', 'MG');
INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (4, 'Rua D', 'Salvador', 'BA');
INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (5, 'Rua E', 'Porto Alegre', 'RS');

INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (1, '(11) 98765-4321', 'Celular');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (2, '(21) 99876-5432', 'Celular');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (3, '(31) 98765-1234', 'Celular');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (4, '(71) 99876-2345', 'Celular');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (5, '(51) 98765-3456', 'Celular');

INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (1, '(11) 5555-1234', 'Residencial');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (2, '(21) 3333-9876', 'Comercial');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (3, '(31) 7777-5678', 'Celular Secundário');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (4, '(71) 4444-7890', 'Residencial');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (5, '(51) 6666-2345', 'Comercial');

select Pessoa.nome, Telefone.numero from Pessoa inner join Telefone on Pessoa.id = Telefone.pessoa_id;

select Pessoa.nome, Endereco.rua, Endereco.cidade from Pessoa left join Endereco on Pessoa.id = Endereco.pessoa_id;

select Pessoa.nome, Endereco.rua, Endereco.cidade, Telefone.numero from Pessoa right Join endereco 
on Pessoa.id = Endereco.pessoa_id left join telefone 
on Pessoa.id = Telefone.pessoa_id;

