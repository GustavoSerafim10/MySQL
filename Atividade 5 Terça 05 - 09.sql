#Suponha uma tabela "Pedidos" com os atributos: Número do Pedido (chave
#primária), Produto, ID do Cliente, Nome do Cliente e Estado do Cliente. Avalie
#se esta tabela está em 3FN ou não e explique por quê.

#Resposta

#a tabela "Pedidos" não está na(3FN) 
#devido à dependência transitiva do "Estado do Cliente" em relação ao "Número do Pedido" através do "ID do Cliente".

CREATE TABLE Clientes (
    ID_Cliente int primary key,
    Nome_Cliente varchar(55),
    Estado_Cliente varchar(55)
);

create table Pedidos4 (
    numero_pedido int primary key,
    Produto varchar(55),
    ID_Cliente int,
    foreign key (ID_Cliente) references Clientes(ID_Cliente)
);