CREATE DATABASE sistema_rh;

USE sistema_rh;


CREATE TABLE tabela_colaboradores (
  id bigint NOT NULL AUTO_INCREMENT,
  nome varchar(10) DEFAULT NULL,
  salario float DEFAULT NULL,
  cargo varchar(20) DEFAULT NULL,
  data_nascimento date DEFAULT NULL,
  PRIMARY KEY (id)
);


INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento)
-- Sempre colocar aspas ' ou " em valores atribuidos em VARCHAR
VALUES ("Maria",1200.00,"Gerente","1968-06-05");

INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento) 
VALUES ('Pedro', 3500, 'Assistente ', '1990-05-15');

INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento) 
VALUES ('Bruno', 8000, 'Gerente de Vendas', '1985-09-30');

INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento) 
VALUES ('Julia', 4500, 'Analista de RH', '1992-03-12');

INSERT INTO tabela_colaboradores (nome, salario, cargo, data_nascimento) 
VALUES ('Rafael', 6000, 'Coordenador', '1988-11-25');

select * from tabela_colaboradores where salario > 2000;

select * from tabela_colaboradores where salario < 2000;

update tabela_colaboradores set salario = 5000 where id=3;
