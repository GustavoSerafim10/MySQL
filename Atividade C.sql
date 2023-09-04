#C_Suponha que você esteja projetando um banco de dados para uma biblioteca.
#Crie uma tabela chamada "Livros" que esteja na 1FN. A tabela deve conter
#informações sobre os livros, incluindo ID do livro, título, autor, ISBN e ano de publicação.

CREATE TABLE Livros (
    id_livro int primary key,
    titulo VARCHAR(55),
    autor VARCHAR(59),
    ISBN VARCHAR(13),
    Ano_Publicacao INT
);

#um pequeno exemplo a respeito de algumas informações sobre livros:
insert into Livros(ID_Livro, Titulo, Autor, ISBN, Ano_Publicacao) values (1, 'O Senhor dos Anéis', 'Tom Cruize', '11-1-111-11-', 1998);

