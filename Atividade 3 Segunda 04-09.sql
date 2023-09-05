#Dada uma tabela "Funcionários" com os atributos: ID do Funcionário (chave
#primária), Nome do Funcionário, Departamento e Endereço do Departamento,
#determine se a tabela está em 2FN ou não, e forneça uma explicação. 

create table Funcionários(
	id_funcionário int primary key auto_increment,
    nome varchar(249),
    departamento varchar(150),
    Endereco_departamento varchar(40)
);


#Resposta
#Essa tabela ela não está em 2FN, devido chegar a "Depender" do "endereço de departamento" devido ser uma chave primária
#Caso eu queira normalizar, deveria criar uma outra tabela separada..
