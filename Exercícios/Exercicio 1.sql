create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    cpf int not null,
    idade int not null,
    salario decimal not null,
    primary key (id)
);

