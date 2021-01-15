create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
	id bigint auto_increment,
    secao varchar(255) not null,
    primary key(id)
);

insert into tb_categoria(secao) values("ELÉTRICA");
insert into tb_categoria(secao) values("FERRAMENTAS");
insert into tb_categoria(secao) values("HIDRAULICA");
insert into tb_categoria(secao) values("PINTURA");
insert into tb_categoria(secao) values("MARCENARIAS E ESQUADRIAS");

create table tb_produtos(
	id bigint auto_increment,
    descricao varchar(255) not null,
    marca varchar(200) not null,
    valor decimal(10,2) not null,
    qtdEstoque int not null,
    secao_id bigint not null,
    primary key (id),
    foreign key (secao_id) references tb_categoria(id)
);

insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("Lâmpada Bulbo LED A60 12W 1050 Bivolt Luz Branca","Lumens",11.79,50,1);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("Furadeira de Impacto 3/8 (10mm) 550W GYFI5000 127V","Hammer",119.99,35,2);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("rena de Bolso Modelo Starrett 8m-26' mm/pol","Starret",59.60,10,2);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("Mangueira em PVC com Tubo Superflex","Ibira",4.50,47,3);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("Tinta Acrílica Fosco Coralar Branco 18L","Coral",145.79,15,4);
insert into tb_produtos(descricao,marca,valor,qtdEstoque,secao_id) values("Jogo Guarnição Pinus Natural 1 Lado 225x7x1cm","Vert",21.90,9,5);

select * from tb_produtos where valor > 50;
select * from tb_produtos where valor >= 3 and valor < 60;
select * from tb_produtos where descricao like "t%";
select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.secao_id;
select tb_produtos.descricao, tb_produtos.marca, tb_produtos.valor, tb_categoria.secao
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.secao_id where secao like "fe%";



