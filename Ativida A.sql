create database atividade_livros;

use atividade_livros;

create table livros(
	id int,
    Titulo varchar(50),
    Autor varchar(50),
    Ano int
);


insert into livros(id, Titulo, Autor, Ano)values(1, "Aventuras", "Autor1", 2005);
insert into livros(id, Titulo, Autor, Ano)values(1, "Aventuras", "Autor2", 2005);
insert into livros(id, Titulo, Autor, Ano)values(1, "Aventuras", "Autor3", 2005);
insert into livros(id, Titulo, Autor, Ano)values(2, "Romance", "Autor4", 2010);
insert into livros(id, Titulo, Autor, Ano)values(3, "Ficção Científica", "Autor5", 2015);
insert into livros(id, Titulo, Autor, Ano)values(3, "Ficção Científica", "Autor6", 2015);

select * from livros




