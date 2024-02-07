drop database dbcinema;

create database dbcinema;

use dbcinema;

create table tbFuncionarios(
codigo int,
nome varchar(100),
email varchar(100),
telCel char(10));

insert into tbFuncionarios(codigo,nome,email,telCel)
	values(1,'Francisco Albuquerque',
		'francisco.albuquerque@hotmail.com','95284-7852');
insert into tbFuncionarios(codigo,nome,email,telCel)
	values(2,'Antonio Fernandes',
		'antonio.fernandes@gmail.com','95874-8745');
insert into tbFuncionarios(codigo,nome,email,telCel)
	values(3,'Osvaldo de Souza',
		'osvaldo.souza@hotmail.com','98631-7458');
insert into tbFuncionarios(codigo,nome,email,telCel)
	values(4,'Ricardo Pedro Paulo',
		'ricardo.ppaulo@yahoo.com','93214-5236');
insert into tbFuncionarios(codigo,nome,telCel)
	values(4,'Pedro','93214-5236');
insert into tbFuncionarios(codigo,nome,email)
	values(4,'Paulo',
		'pedro.ppaulo@yahoo.com');

select * from tbFuncionarios;

-- alterando registros nas tabelas criadas.

update tbFuncionarios set nome = 'Francisco Albuquerque Fonseca'
	where codigo = 1;

update tbFuncionarios set codigo = 5 where nome = 'Pedro';

update tbFuncionarios set codigo = 6 where nome = 'Paulo';

update tbFuncionarios set nome = 'Pedro de Vasconcelos Cunha',
	email = 'pedro.vcunha@globo.com' where codigo = 5;

update tbFuncionarios set nome = 'Paulo Ivanildo',
	email = 'paulo.ivanildo@yahoo.com', telCel = '97412-5214' 
	where codigo = 6;

select * from tbFuncionarios;

-- excluindo registros nas tabelas criadas

delete from tbFuncionarios where codigo = 5;


select * from tbFuncionarios;

-- buscando valores e alterando o cabeçalho das tabelas

select codigo as 'Codigo', nome as 'Nome',
	telCel as 'Telefone celular' from tbFuncionarios;


-- Crie uma database chamada ZOOLOGICO.

-- Na database ZOOLOGICO, crei uma tabela chamada ANIMAIS com os seguintes

-- Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS.


