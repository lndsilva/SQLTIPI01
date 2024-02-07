-- apagando banco de dados
drop database dbBoteco;

-- criando banco de dados
create database dbBoteco;

-- acessando banco de dados
use dbBoteco;

-- criando as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
fone char(10),
cpf char(14),
dataNasc date,
logradouro varchar(100),
numero char(5),
cep char(9),
bairro varchar(100),
cidade varchar(100),
siglaEst char(2)
);

create table tbUsuarios(
codUsu int,
nome varchar(30),
senha varchar(20)
);

create table tbFornecedores(
codForn int,
nome varchar(100),
email varchar(100),
telCel char(10),
cnpj char(18)
);

create table tbProdutos(
codProd int,
nome varchar(100),
valor decimal(9,2),
qtde int,
dataEnt date,
horaEnt time
);

create table tbClientes(
codCli int,
nome varchar(100),
email varchar(100),
telCel char(10),
cpf char(14)
);


create table tbVendas(
codVenda int,
codProd int,
codCli int,
codUsu int,
qtde int,
preco decimal(9,2),
dataVenda date,
horaVenda time
);

-- visualizando as tabelas

show tables;

-- visualizando a estrutura das tabelas

desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbProdutos;
desc tbClientes;
desc tbVendas;

-- inserindo os registros nas tabelas

insert into tbFuncionarios(codFunc,nome,email,fone,cpf,dataNasc,logradouro,
numero,cep,bairro,cidade,siglaEst)values(1,'Amarildo da Penha','amarildo.penha@gmail.com',
'98888-7547','258.368.952-88','1985/10/05','Rua das Asturias','1A','04750-000',
'Jardim das Oliveiras','São Paulo','SP');

insert into tbUsuarios(codUsu,nome,senha)values(1,'amarildo.penha','123456');

insert into tbFornecedores(codForn,nome,email,telCel,cnpj)
	values(1,'Casa das frutas SA','sac@casadasfrutas.com.br','95742-5824','03.361.252/0001-34');

insert into tbProdutos(codProd,nome,valor,qtde,dataEnt,horaEnt)
	values(1,'Couve manteiga', 10.50, 5,'2023/10/31','09:32:50');

insert into tbClientes(codCli,nome,email,telCel,cpf)
	values(1,'Humberto Carlos Figueira','humberto.cfigueira@hotmail.com',
		'98547-3652','254.536.582-99');

insert into tbVendas(codVenda,codProd,codCli,codUsu,qtde,preco,dataVenda,horaVenda)
	values(1,1,1,1,3,5,'2023/10/31','09h:38:52');

-- visualizando os registros das tabelas

select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbFornecedores;
select * from tbProdutos;
select * from tbClientes;
select * from tbVendas;
