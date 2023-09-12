#Crie duas classes em Java: Veiculo e Carro. A classe Veiculo deve ter os seguintes atributos: marca e ano e
#um método exibir informações que imprime as informações do veículo. A classe Carro deve herdar da classe
#Veiculo e adicionar um atributo ‘modelo’ e um método ‘ligarMotor’ que imprime "Carro ligando o motor".
#Crie objetos da classe Carro, configure seus atributos e chame seus métodos para exibir as informações e ligar
#o motor.


create table Veiculo (
veiculo_id int primary key auto_increment,
  marca varchar (212),
   ano INT
);

create table Carro (
    carro_id int primary key,
    modelo varchar (44),
    foreign key(carro_id) REFERENCES Veiculo(veiculo_id)
);

insert into Veiculo (marca, ano) values ('Toyota', 2023);
insert into Carro (carro_id, modelo) values (1, 'Corolla');