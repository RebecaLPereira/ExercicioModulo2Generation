create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment primary key,
    nome varchar(50),
    tipo varchar(50)
);

create table tb_personagens(
	id bigint auto_increment primary key,
    nome_personagem varchar(50),
    vida float,
    ataque float,
    defesa float,
    classe_id bigint,
    foreign key (classe_id) references tb_classes(id)
);

insert into tb_classes (nome,tipo)
values 
("Bruxa","Invocador"),
("Mago","Feiticeiro"),
("Padre","Buffer"),
("Guerreiro","Tank"),
("Ladino","Assassino");

insert into tb_personagens (nome_personagem, vida, ataque, defesa, classe_id)
values
("Bru",800.00,1000,500,1),
("Latino", 750.00,1800,700,5),
("Mag", 1200.00,1600,1100,2),
("Marcelo Rossi",1100.00,1200,1000,3),
("Leonidas",3000.00,500,3700,4),
("Kelmon",1000.00,1000,700,3),
("Blair",900.00, 1200,600,1),
("Rei Arthur", 3600.00,900,4000,4);

select * from tb_personagens where ataque>2000;
-- SELECT que retorne todos ataques cujo o valor seja maior que 2000

select * from tb_personagens where defesa between 1000 and 2000;
-- SELECT que retorne todas defesas cujo valor seja entre 1000 e 2000

select * from tb_personagens where nome_personagem like "%C%";
-- Retorna o nome_personagem que contenha a letra "C" em qualquer posição do registro

select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id;
-- Unindo as tabelas através de um campo (classe_id & id)

select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id where tb_classes.nome like "Guerreiro";
-- Unindo as tabelas através de um campo (classe_id & id) e filtra os registros através de outro campo (nome)

