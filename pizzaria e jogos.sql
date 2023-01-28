-- atividade 01 - db_generation_game_online.

CREATE DATABASE db_generation_game_online;

-- CREATE DATABE USADO PARA CRIAR O BANCO DE DADOS 
-- DROP DATABE UASDO PARA EXCLUIR A TABELA

USE db_generation_game_online; 

-- Crie um banco de dados para um serviço de um Games Online. 
-- O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
-- O sistema trabalhará com as informações dos personagens do jogo. 
-- O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
 
 
 -- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, 
 -- relevantes para classificar os personagens do Game Online.
 
CREATE TABLE tb_classes( 
	id BIGINT auto_increment,
    nome_categoria VARCHAR(255),  
    jogo VARCHAR(255),
    PRIMARY KEY (id)
);

-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
-- relevantes aos personagens do Game Online

 CREATE TABLE tb_personagens(
	id BIGINT auto_increment,
	nome VARCHAR(255),
	poder_ataque DECIMAL(10.1),
	poder_defesa DECIMAL(10.1),
	especialidade VARCHAR(255),
    categoria_id BIGINT,
	PRIMARY KEY (id),
    
    FOREIGN KEY (categoria_id) REFERENCES tb_classes(id)
    ); 	

-- Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
 

-- Insira 5 registros na tabela tb_classes.

INSERT INTO tb_classes(nome_categoria,jogo)
				VALUES("Tiro","Call Of Duty");

INSERT INTO tb_classes(nome_categoria,jogo)
			VALUES("Futebol","FIFA Ultimate");

INSERT INTO tb_classes(nome_categoria,jogo)
			VALUES("Corrida","Formula1");

INSERT INTO tb_classes(nome_categoria,jogo)
		VALUES("Aventura","Crash");

INSERT INTO tb_classes(nome_categoria,jogo)
				VALUES("Retro","Super Mario Bross");

-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.

INSERT INTO tb_personagens(nome,poder_ataque,poder_defesa,especialidade)
					VALUES("Rambo",1872,1254,"Aventura");

INSERT INTO tb_personagens(nome,poder_ataque,poder_defesa,especialidade)
					VALUES("Michael Jackson",1253,1369,"Retro");

INSERT INTO tb_personagens(nome,poder_ataque,poder_defesa,especialidade)
					VALUES("Ozama Bim Ladem",4950,1980,"Tiro");

INSERT INTO tb_personagens(nome,poder_ataque,poder_defesa,especialidade)
				   VALUES("Obama",5000,1000,"Tiro");

INSERT INTO tb_personagens(nome,poder_ataque,poder_defesa,especialidade)
					VALUES("Guilherme",4520,1250,"Futebol");
                    
INSERT INTO tb_personagens(nome,poder_ataque,poder_defesa,especialidade)
					VALUES("Aimmer",3200,1400,"Corrida");
                    
INSERT INTO tb_personagens(nome,poder_ataque,poder_defesa,especialidade)
					VALUES("Bob Marley",1657,1100,"futebol");

INSERT INTO tb_personagens(nome,poder_ataque,poder_defesa,especialidade)
					VALUES("Puchem",5000,2403,"tiro");


-- usado para selecionar a tabela criada -- 
SELECT * FROM tb_classes; 
SELECT * FROM tb_personagens;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE poder_defesa = 1000 < 2000;


-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE  " % C % " ;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT * FROM tb_personagens INNER JOIN tb_classes;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, 
-- onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
SELECT * FROM tb personagens  INNER JOIN tb_classes;

-- atividade 02 -- db_pizzaria_legal -- 

CREATE DATABASE db_pizzaria_ze;

USE db_pizzaria_ze;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
CREATE TABLE tb_categoria(
id BIGINT auto_increment,
nome_categoria VARCHAR(255),
tamanho VARCHAR(255),
PRIMARY KEY (id)
); 

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
CREATE TABLE tb_PIZZA(
id BIGINT auto_increment,
sabor VARCHAR(255),
preço DECIMAL(5,2),
sobremessa VARCHAR(255),
bebidas VARCHAR(255),
PRIMARY KEY (id),

FOREIGN KEY tb_pizza(id) REFERENCES tb_categoria(id)
 );

-- Insira 5 registros na tabela tb_categorias.

INSERT INTO tb_categoria(nome_categoria,tamanho)
					VALUES("Brotinho"," P ");

INSERT INTO tb_categoria(nome_categoria,tamanho)
					VALUES("Brotinho"," M ");

INSERT INTO tb_categoria(nome_categoria,tamanho)
					VALUES("Brotinho"," G ");

 INSERT INTO tb_categoria(nome_categoria,tamanho)
					VALUES("Doce"," P ");

INSERT INTO tb_categoria(nome_categoria,tamanho)
					VALUES("Doce"," M ");                    

INSERT INTO tb_categoria(nome_categoria,tamanho)
					VALUES("Doce"," G ");

INSERT INTO tb_categoria(nome_categoria,tamanho)
					VALUES("Tradicional"," 08 pedações  ");

INSERT INTO tb_categoria(nome_categoria,tamanho)
					VALUES("Tradicional "," 16 pedações  ");

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

INSERT INTO tb_PIZZA(sabor,preço,sobremessa,bebidas)
					VALUES("Mussarela",39.900,"sorvete de Morango","Coca Cola 02 Litros");
                    
INSERT INTO tb_PIZZA(sabor,preço,sobremessa,bebidas)
					VALUES("Frango Catupity",49.900,"Bolo de Chocolate","Fanta Laranja 02 Litros");   
                    
INSERT INTO tb_PIZZA(sabor,preço,sobremessa,bebidas)
					VALUES("Romeu e Julieta",63.000,"Não","Dolly Guaraná 02 Litros");
                    
INSERT INTO tb_PIZZA(sabor,preço,sobremessa,bebidas)
					VALUES("Chocolate",78.900,"Não","Fanta Uva 600 ml ");
                    
INSERT INTO tb_PIZZA(sabor,preço,sobremessa,bebidas)
					VALUES("Atum com Mussarela",77.900,"Bolo de Cenoura","02 Heineken 600 ml");
                    
INSERT INTO tb_PIZZA(sabor,preço,sobremessa,bebidas)
					VALUES("Peperone com Catupiry",66.00,"Bolo de Prestigio","Agua com Gás 02 Litros com ");
                    
INSERT INTO tb_PIZZA(sabor,preço,sobremessa,bebidas)
					VALUES("Calabresa Sem Cebola",49.000,"Trufa de chocolate","H2O Limão 1,5lt ");
                    
INSERT INTO tb_PIZZA(sabor,preço,sobremessa,bebidas)
					VALUES("Marguerita",49.900,"Coock de gotas de chocolate","Pepsi 02 Litros");
                    
INSERT INTO tb_PIZZA(sabor,preço,sobremessa,bebidas)
					VALUES("Portuguesa",89.00,"Geladinho de Abacate","Itubaina 02 Litros");
                    


-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00. 
SELECT * FROM tb_categoria; 
SELECT * FROM tb_PIZZA;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_PIZZA WHERE preço > 50 < 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_PIZZA WHERE nome LIKE  " % M % " ;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_PIZZA INNER JOIN tb_categoria;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
-- onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT  *  FROM tb_PIZZA INNER JOIN tb_categoria ON  tb_categoria . id  =  tb_PIZZA . id
























-- atividade 03 - db_farmacia_bem_estar -- 

-- atividade 04 -- db_cidade_das_carnes -- 
 
 -- atividade 05 db_construindo_vidas 
 
 -- atividade 06 db_curso_da_minha_vida 
 
 -- 