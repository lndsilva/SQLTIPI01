drop database dbFlora;

create database dbFlora;

use dbFlora;

-- trabalhar com a estrutura das tabelas
create table tbFuncionarios(
nome varchar(10),
cpf char(2)
);

create table tbPersons(
id int,
lastName varchar(100),
firstName varchar(100),
address varchar(100),
city varchar(100)
);

-- visualizando a estrutura da tabela
desc tbFuncionarios;
desc tbPersons;

-- inserindo registros nas tabelas

insert into tbPersons(id, lastName,firstName,address,city)
	values(1,'Hansen','Ola', 'Timotevn 10','Sandnes');
insert into tbPersons(id, lastName,firstName,address,city)
	values(2,'Svendson','Tove', 'Borgvn 23','Sandnes');
insert into tbPersons(id, lastName,firstName,address,city)
	values(3,'Pettersen','Kari', 'Storgt 20','Stabanger');

-- visualizando os registros nas tabelas
select * from tbPersons;

-- adicionando colunas em uma tabela criada

alter table tbFuncionarios add email varchar(100);

alter table tbFuncionarios add tel char(10);

alter table tbFuncionarios add logradouro varchar(100);

alter table tbFuncionarios add numero char(10);

alter table tbFuncionarios add cep char(9);

alter table tbFuncionarios add bairro varchar(100);

alter table tbFuncionarios add cnpj int(11);

alter table tbPersons add dateofbirth date;

-- alterar colunas da tabela criada

alter table tbFuncionarios modify column nome varchar(100);
alter table tbFuncionarios modify column cpf char(14);
alter table tbPersons modify column dateofbirth year;

-- apagar colunas da tabela criada

alter table tbFuncionarios drop column cnpj;
alter table tbPersons drop column dateofbirth;

desc tbFuncionarios;
desc tbPersons;

select * from tbPersons;



