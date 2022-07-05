create database Escola;

create table Instituicao(
Id int primary key identity,
Nome varchar(60) not null,
Endere�o varchar(100) not null,
CNPJ int not null,

);

create table Alunos(
Id int primary key identity, 
Nome varchar(60) not null,
Sobrenome varchar(60) not null,
Matr�cula int not null,
Id_Instituicao int not null,

constraint FK_Instituicao_Alunos foreign key (Id_Instituicao) references Instituicao(Id)
);