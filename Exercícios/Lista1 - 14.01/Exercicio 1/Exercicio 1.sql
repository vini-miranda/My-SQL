create table tbl_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    cpf bigint not null,
    idade int not null,
    salario decimal(10,3),
    primary key (id)
);

update tbl_funcionarios set nome = "RENATA SILVA JUNQUEIRA", cpf = 1254876954, idade = 25, salario = 2.600 where id = 2;
insert into tbl_funcionarios (nome,cpf,idade,salario) values ("JOSÉ PEREIRA RAMOS",1234567890,28,2.500);
insert into tbl_funcionarios (nome,cpf,idade,salario) values ("MURILO SILVEIRA SANTOS",231564790,24,2.800);
insert into tbl_funcionarios (nome,cpf,idade,salario) values ("SABRINA OLIVEIRA NEVES",785426541,22,1.500);

select * from tbl_funcionarios where salario > 2.000






 
