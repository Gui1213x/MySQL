CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos(
	id BIGINT auto_increment,
    nome VARCHAR(255),
    preço DECIMAL(5,2),
	quantidade VARCHAR(255),
    marca VARCHAR(255),
    PRIMARY KEY(id)
);


-- insert into - serve para voce inserir as informações do produto no banco de dados 
-- VALUES é o valor será inserido no banco de dados dos produtos  
INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Camiseta",19.90,5,"Lacote");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Calça",300.90,10,"Kelvin Cleiton");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Tenis",150.90,10,"Pumba");

SELECT * FROM produtos;
-- select que retorna todos os dados da tabela 

-- select que retorna apenas os protudos de preco menor a 100 
-- WHERE 
SELECT * FROM produtos WHERE preco < 100;

-- select que retona apenas os produtos de preco maior que 100
SELECT * FROM produtos WHERE preco > 100;

-- este comando é usado para fazer a troca de nome dos produtos de nosso banco de dados 
UPDATE  protudos
SET nome = "camiseta"
WHERE id=1; 

-- este comando é usado para deletar 
DELETE FROM produtos WHERE id;


-- isto serve como o protetor do SQL 
SET SQL_SAFE_UPDATES = 0;


	

