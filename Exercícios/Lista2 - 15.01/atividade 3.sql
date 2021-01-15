create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    secao varchar(200) not null,
    primary key (id)
);

insert into tb_categoria(secao) values("COSMÉTICOS");
insert into tb_categoria(secao) values("REMÉDIOS");
insert into tb_categoria(secao) values("PERFUMARIA");
insert into tb_categoria(secao) values("OUTROS");

create table tb_produtos(
	id bigint auto_increment,
    descricao varchar(255) not null,
    valor decimal(10,2) not null,
    qtdEstoque int not null,
    secao_id bigint not null,
    primary key (id),
    foreign key (secao_id) references tb_categoria(id)
);

ALTER TABLE tb_produtos ADD marca VARCHAR(200) after descricao;

insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("POMADA NABACETIN","TAKEDA",16.69,10,2);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("CREME FACIAL","NIVEA",29.69,30,1);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("LOÇÃO HIDRATANTE","NIVEA",15.99,15,1);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("DESODORANTE AEROSOL","DOVE",13.79,40,3);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("DESODOREANTE ROLL-ON","REXONA",8.99,10,3);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("ESTIMULADOR NEUROMUSCULAR","TANYX",127.69,50,4);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("SUPLEMENTO VITAMÍNICO","CENTRUM",72.00,15,2);

SELECT * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.secao_id where valor > 50;

SELECT * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.secao_id where valor >= 3 and valor < 60;

SELECT * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.secao_id where descricao like "%b%";

SELECT tb_produtos.descricao, tb_produtos.marca, tb_produtos.valor, tb_categoria.secao 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.secao_id;

SELECT tb_produtos.descricao, tb_produtos.marca, tb_produtos.valor, tb_categoria.secao 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.secao_id where secao = "cosméticos";




    
    
    