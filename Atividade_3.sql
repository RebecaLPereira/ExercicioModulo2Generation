CREATE DATABASE escola;

-- Seleciona o banco de dados a ser utilizado
USE escola;

-- Criação da tabela estudantes com seus respectivos atributos
CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    curso VARCHAR(50),
    notas FLOAT(2),
    matricula VARCHAR(20)
);

-- Inserção de 8 registros na tabela estudantes
INSERT INTO estudantes (nome, idade, curso, notas, matricula)
VALUES 
('João', 18, 'Ciências da Computação', 8.5, '20220001'),
('Maria', 19, 'Engenharia Civil', 9.0, '20220002'),
('Pedro', 20, 'Arquitetura', 6.5, '20220003'),
('Mariana', 21, 'Medicina', 7.0, '20220004'),
('Lucas', 18, 'Administração', 8.0, '20220005'),
('Ana', 19, 'Letras', 7.5, '20220006'),
('Carla', 20, 'Design Gráfico', 6.0, '20220007'),
('Rafael', 21, 'Engenharia Mecânica', 9.5, '20220008');

-- SELECT que retorna todos os estudantes com notas maiores do que 7.0
SELECT * FROM estudantes WHERE notas > 7.0;

-- SELECT que retorna todos os estudantes com notas menores do que 7.0
SELECT * FROM estudantes WHERE notas < 7.0;

-- Atualização do registro de ID 3, alterando o valor da nota de 6.5 para 7.5
UPDATE estudantes SET notas = 7.5 WHERE id = 3;