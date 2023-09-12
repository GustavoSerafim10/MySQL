#Crie uma interface chamada Animal em java com um método fazerSom(). Em seguida, crie duas classes que
#implementam a interface Animal : Cachorro e Gato (símbolo ‘:’ significa implements). Cada classe deve
#implementar o método fazerSom() de forma diferente, onde cachorro faz “Latido” e Gato faz “Miado”. Em
#seguida, crie um array de objetos do tipo ‘Animal’, adicione instâncias de Cachorro e Gato a ele e percorra o
#array chamando o método fazerSom() de cada animal.

create table Animal (
    animal_id int primary key,
    nome varchar (55),
    som varchar(23)
);

create table Cachorro (
    cachorro_id int primary key,
    raca varchar (55),
    foreign key(cachorro_id) references Animal(animal_id)
);

create table Gato (
    gato_id int primary key,
    cor varchar(99),
    foreign key (gato_id) references Animal(animal_id)
);

insert into Animal (nome, som) values('Cris', 'Sla');
insert into Cachorro (cachorro_id, raca) values(1, 'Golden');
insert into Gato (gato_id, cor) values(2, 'Preto');