CREATE DATABASE conectados;
USE conectados;

CREATE TABLE funcionarios
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null default '0',
	departamento varchar(45) not null,
    PRIMARY KEY (id)
);
CREATE TABLE veiculos
(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar(45) not null default '',
    placa varchar(10) not null default '',
    primary key(id),
    CONSTRAINT fk_veiculos_receba foreign key(funcionario_id) REFERENCES funcionarios (id)
);
CREATE TABLE salarios
(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    PRIMARY KEY (faixa)
);