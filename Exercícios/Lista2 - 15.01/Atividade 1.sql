create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    tipo varchar(255) not null,
    clã varchar(100) not null,
    primary key (id)
);

insert into tb_classe(tipo,clã) values("arqueiro","fogo");
insert into tb_classe(tipo,clã) values("guerreiro","gelo");
insert into tb_classe(tipo,clã) values("mago","água");

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(200) not null,
    poderAtaque int not null,
    poderDefesa int not null,
    tipo_id bigint not null,
    primary key (id),
    foreign key (tipo_id) references tb_classe (id)
);

insert into tb_personagem(nome,poderAtaque,poderDefesa,tipo_id) values("CONAN",2500,3000,2);
insert into tb_personagem(nome,poderAtaque,poderDefesa,tipo_id) values("KATARA",1500,4000,3);
insert into tb_personagem(nome,poderAtaque,poderDefesa,tipo_id) values("CRIMSON",1300,2000,1);
insert into tb_personagem(nome,poderAtaque,poderDefesa,tipo_id) values("ZANGIF",3500,1000,2);
insert into tb_personagem(nome,poderAtaque,poderDefesa,tipo_id) values("RUBEL",4500,2700,1);
insert into tb_personagem(nome,poderAtaque,poderDefesa,tipo_id) values("OBLIVION",5500,5000,3);


select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.tipo_id WHERE poderAtaque > 2000;
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.tipo_id WHERE poderDefesa >= 1000 and poderDefesa < 2000;
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.tipo_id WHERE nome like "%c%";

select tb_personagem.nome, tb_personagem.poderAtaque, tb_personagem.poderDefesa, tb_classe.tipo 
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.tipo_id;

select tb_personagem.nome, tb_personagem.poderAtaque, tb_personagem.poderDefesa, tb_classe.tipo 
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.tipo_id where tipo = "arqueiro";



 





    
