#.Considere uma tabela "Produtos" com os atributos: ID do Produto (chave
#primária), Nome do Produto, Categoria do Produto e Nome do Fornecedor. Analise
#se esta tabela está em 3FN ou não e justifique sua resposta.

#Resposta
#De certa forma, para concluir se a tabela "Produtos" está em 3FN, 
#teoricamente precisamos daa chave primária real da tabela e analisar as dependências funcionais diante os atributos
#da chave primária

create table produtos2 (
    id_produto int primary key,
    Nome_Produto varchar(25),
    Categoria_Produto varchar(33),
    Nome_Fornecedor varchar(57)
);
