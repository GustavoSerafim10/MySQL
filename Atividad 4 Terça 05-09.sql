#.Dada uma tabela "Escolas" com os atributos: ID da Escola (chave primária),
#Nome da Escola, Nome do Diretor e Endereço do Diretor. Determine se esta tabela
#está em 3FN ou não, e forneça uma explicação.

#resposta
# Aa tabela "Escolas" parece estar em 2FN e não há violações da 3FN. 
# os atributos "Nome do Diretor" e "Endereço do Diretor"
# são dependentes da escola e, portanto, não há dependências transitivas.

create table escolas (
    id_escola int primary key,
    Nome_Escola varchar(22),
    Nome_Diretor varchar(44),
    Endereco_Diretor varchar(41)
);