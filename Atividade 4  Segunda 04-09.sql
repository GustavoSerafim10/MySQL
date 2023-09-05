#suponha uma tabela "Cursos" com os seguintes atributos: Código do Curso (chave
#primária), Nome do Curso, Professor e Departamento do Professor. Avalie se está
#a tabela está em 2FN ou não e explique sua conclusão.

create table cursos(
	codigo_curso int primary key auto_increment,
    Nome_curso varchar(233),
    Nome_professor varchar(222),
    Departamento_Professor varchar(111)
);


#Resposta
#Curso ela se enconta na 2fn, pois está atendendo a 1FN, e não tem nenhuma dependência parciiais em relação a chave tlg.
