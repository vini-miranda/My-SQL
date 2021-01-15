create database escola;
use escola;

create table alunos(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int not null,
    turma varchar(10) not null,
    nota decimal(10,1),
    primary key (id)
);

insert into alunos(nome,idade,turma,nota) values("RENAN",16,"3B",7.8);
insert into alunos(nome,idade,turma,nota) values("CARLA",17,"2C",6.5);
insert into alunos(nome,idade,turma,nota) values("FABRICIO",18,"3C",9.3);
insert into alunos(nome,idade,turma,nota) values("SABRINA",17,"1A",4.9);
insert into alunos(nome,idade,turma,nota) values("NATALIA",16,"2C",10);
insert into alunos(nome,idade,turma,nota) values("PABLO",19,"4C",4.1);
insert into alunos(nome,idade,turma,nota) values("RITA",17,"3B",5.9);
insert into alunos(nome,idade,turma,nota) values("EDMUNDO",19,"2C",8.5);

select * from alunos where nota > 7;

select * from alunos where nota < 7;

update alunos set nota = 10 where id = 1;
update alunos set nota = 5.5 where id = 3;
update alunos set nota = 9.8 where id = 6;

select * from alunos;
