create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    primary key(id)
);

insert into tb_categoria(tipo) values("CARNES");
insert into tb_categoria(tipo) values("FRANGO");
insert into tb_categoria(tipo) values("PEIXES");
insert into tb_categoria(tipo) values("QUEIJO");
insert into tb_categoria(tipo) values("VEGETARIANAS");
insert into tb_categoria(tipo) values("DOCES");

create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(100) not null,
    tamanho character not null,
    borda boolean,
    preco decimal(60,2) not null,
    tipo_id bigint not null,
    primary key(id),
    foreign key(tipo_id) references tb_categoria(id)
);

insert into tb_pizza(sabor,tamanho,borda,preco,tipo_id) values("MUSSARELA",'G',true,25.00,4);
insert into tb_pizza(sabor,tamanho,borda,preco,tipo_id) values("ATUM",'M',FALSE,35.50,4);
insert into tb_pizza(sabor,tamanho,borda,preco,tipo_id) values("CALABRESA",'P',true,23.70,2);
insert into tb_pizza(sabor,tamanho,borda,preco,tipo_id) values("FRANGO C/ CATUPIRY",'G',FALSE,29.00,3);
insert into tb_pizza(sabor,tamanho,borda,preco,tipo_id) values("BRÓCOLIS",'M',true,22.00,6);
insert into tb_pizza(sabor,tamanho,borda,preco,tipo_id) values("BAIANA",'G',FALSE,30.00,2);
insert into tb_pizza(sabor,tamanho,borda,preco,tipo_id) values("PRESTÍGIO",'P',FALSE,35.00,7);
insert into tb_pizza(sabor,tamanho,borda,preco,tipo_id) values("MARGUERITA",'M',true,28.00,5);

select * from tb_pizza where preco > 30;

select * from tb_pizza where preco >= 25 and preco < 30;

select tb_pizza.sabor, tb_pizza.preco, tb_pizza.tamanho, tb_categoria.tipo 
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id where sabor like "%c%";

select tb_pizza.sabor, tb_pizza.preco, tb_pizza.tamanho, tb_categoria.tipo 
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id;

select tb_pizza.sabor, tb_pizza.preco, tb_pizza.tamanho, tb_categoria.tipo 
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id where tipo like "%doces%";




 


    

    