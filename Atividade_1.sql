-- Criando um novo banco de dados (create database NOME_DO_BANCO)
CREATE DATABASE sistema_rh;

-- Selecionando o banco de dados para funcionamento
USE sistema_rh;

-- Criando a tabela com ATRIBUTOS
CREATE TABLE tabela_colaboradores(
	-- AUTO_INCREMENT: cria uma sequência de numeros automática, NUMERO++
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(10),
    salario FLOAT,
    cargo VARCHAR(20),
    data_nascimento DATE,
    
    -- Define ID como chave primária(não permite valores duplicado)
    PRIMARY KEY(id)
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