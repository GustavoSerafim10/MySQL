#Você possui uma tabela "Livros" com os seguintes atributos: ISBN (chave
#primária), Título do Livro, Autor e Editora. Analise se esta tabela está em 2FN ou não, e explique seu raciocínio.

create table Livros(
	ISBN int primary key auto_increment,
    Titulo varchar(50),
    Autor varchar(45),
    Editora varchar(60)
);

#Resposta

#creio que não há dependencia parciais de atributos em relação a chave primary
#então relativamente todos são dependentes da chave primária ISBN
#Não há necessidade de fazer modificação, pois ela já segue o padrão correto da 2FN