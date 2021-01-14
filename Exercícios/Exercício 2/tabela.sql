create database loja;
use loja;

create table produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(10,2),
    qtdEstoque int not null,
    marca varchar(255) not null,
    primary key (id)
);

insert into produtos(nome,marca,valor,qtdEstoque) values("BONÉ","LACOSTE",139.99,8);
insert into produtos(nome,marca,valor,qtdEstoque) values("BOTA","TIMBERLAND",249.99,2);
insert into produtos(nome,marca,valor,qtdEstoque) values("TÊNIS","ADIDAS",189.99,5);
insert into produtos(nome,marca,valor,qtdEstoque) values("SHORTS","NIKE",69.99,10);

select * from produtos




 
