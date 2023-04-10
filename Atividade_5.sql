create database db_pizzaria_legal;

 use db_pizzaria_legal;
 
 create table tb_categorias(
	id bigint auto_increment primary key,
    tipo varchar(10),
    fatias int
 );
 
 create table tb_pizzas(
	id bigint auto_increment primary key,
    tipo_pizza varchar(10),
    sabor varchar(50),
    preco float,
    borda boolean,
    categoria_id bigint,

    foreign key (categoria_id) references tb_categorias(id)
 );
 
 insert into tb_categorias (tipo,fatias)
 values
 ("Doce",6),
 ("Salgada",8),
 ("Salgada",4),
 ("Doce",8),
 ("Salgada",6);
 
 insert into tb_pizzas (tipo_pizza, sabor, preco, borda, categoria_id)
 values
 ("Salgada","Queijo",45.00,false,5),
 ("Salgada","Calabresa",48.00,true,5),
 ("Doce","Brigadeiro",50.00,true,1),
 ("Salgada","Marguerita",51.00,false,2),
 ("Doce","Romeu e Julieta",30.00,false,4),
 ("Doce","Prestígio",50.00,false,4), 
 ("Salgada","Frango Catupiry",40.00,true,3),
 ("Salgada","Cinco Queijos",55.00,false,2);
 
 
 select * from tb_categorias;
-- SELECT que retorna todas os atributos da tabela catgeorias(tb_catgeorias)

select * from tb_pizzas;
-- SELECT que retorna todas os atributos da tabela pizzas(tb_pizzas)

select * from tb_pizzas where preco>45.00;
-- SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00

select * from tb_pizzas where preco between 50.00 and 100.00;
-- SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00

select * from tb_pizzas where sabor like "%M%";
-- Retorna o sabor(atributo) que contenha a letra "M" em qualquer posição do registro

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_pizzas.id;
-- Unindo as tabelas através de um campo (categoria_id & id)

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id where tb_pizzas.sabor like "Queijo";
-- Unindo as tabelas através de um campo (categoria_id & id) e filtra os registros através de outro campo (sabor)