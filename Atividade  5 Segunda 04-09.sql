#Considere uma tabela "Pedidos" com os atributos: Número do Pedido (chave
#primária), Produto, Nome do Cliente e Cidade do Cliente. Determine se esta
#tabela está em 2FN ou não, e dê razões para sua resposta.

create table pedidos1(
	Numero_Pedido int primary key auto_increment,
    produto varchar(123),
    Nome_cliente varchar (222),
    Cidade_cliente varchar(40)
);




#Resposta
# De certa forma a tabela não se encontra diretamente na 2FN..
# pois o "produto" cria uma pequena dependência se envolvendo a chave primaria.
#Neste caso seria necessário a criação de outra tabela.
