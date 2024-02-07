drop database dbConfeitaria;

create database dbConfeitaria;

use dbConfeitaria;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100) not null,
telCel char(9),
cpf char(14) not null unique,
salario decimal(9,2) default 0 check(salario >= 0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codFunc));

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(52) not null,
senha varchar(31) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc) references tbFuncionarios(codFunc)
);

show tables;

desc tbFuncionarios;
desc tbUsuarios;