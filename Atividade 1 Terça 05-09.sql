#Suponha uma tabela "Funcionários" com os atributos: ID do Funcionário (chave
#primária), Nome do Funcionário, Departamento e Localização do Departamento
#(cidade e estado). Determine se esta tabela está em 3FN e explique sua resposta.

#Resposta
#Para colocar a tabela em 3FN, vou fazer abaixo. pois será preciso 3 tabelas tlg.

create table funcionarios(
	Idfuncionario int primary key,
    nome_funcionario varchar(222),
    IdDepartamento int,
    foreign key(idDepartamento) references Departamentos(idDepartamento)
);

create table Departamentos(
	IdDepartamento int primary key,
    NomeDepartamento varchar(150),
    IdLocalizacao int,
    foreign key(IdLocalizacao) references LocalizacaoDepartamento(IdLocalizacao)
);

create table LocalizacaoDepartamento(
	IdLocalizacao int primary key,
    cidade varchar(123),
    estado varchar(2)
);

