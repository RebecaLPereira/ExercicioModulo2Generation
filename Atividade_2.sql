create database ecommerce;

use ecommerce;

create table tabela_produtos(
	id bigint auto_increment,
    nome varchar(30),
    preco float,
    categoria varchar(30),
    quantidade_estoque bigint,
    
     PRIMARY KEY(id)
);

insert into tabela_produtos (nome, preco, categoria, quantidade_estoque)
values ("Camiseta Branca", 69.99, "Vestuário", 150);

insert into tabela_produtos (nome, preco, categoria, quantidade_estoque)
values ("Notebook", 3999.99, "Eletrônico",30);

insert into tabela_produtos (nome, preco, categoria, quantidade_estoque)
values ("Sabonete", 2.50, "Higiene", 401);

insert into tabela_produtos (nome, preco, categoria, quantidade_estoque)
values ("Porta Copos", 19.99, "Utensílio Doméstico", 27);

insert into tabela_produtos (nome, preco, categoria, quantidade_estoque)
values ("Batom", 89.99, "Maquiagem", 75);

insert into tabela_produtos (nome, preco, categoria, quantidade_estoque)
values ("Relógio de Parede", 39.99, "Decoração", 5);

insert into tabela_produtos (nome, preco, categoria, quantidade_estoque)
values ("Smartphone Samsumgue", 1979.00, "Eletrônico", 23);

insert into tabela_produtos (nome, preco, categoria, quantidade_estoque)
values ("Caneca Personalizada", 10.00, "Utensílio Doméstico", 15);

select * from tabela_produtos where preco > 500;

select * from tabela_produtos where preco < 500;

update tabela_produtos set preco=17.28 where id=8;