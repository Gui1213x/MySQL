-- Atividade 01 - Serviço de RH -- 

CREATE DATABASE rh;

USE rh;

CREATE TABLE colaboradores(
	id BIGINT auto_increment,
    nome VARCHAR(255),
    cpf INT(11),
    idade INT(2),
    cargo VARCHAR(255),
    salario DECIMAL(5,2),
    PRIMARY KEY (id)
);

INSERT INTO colaboradores(nome,cpf,idade,cargo,salario)
VALUES("Guilherme",112534689.75,2,"diretor",300.00);

INSERT INTO colaboradores(nome,cpf,idade,cargo,salario)
VALUES("Aimme",789456123.77,25,"gerente",200.00);

INSERT INTO colaboradores(nome,cpf,idade,cargo,salario)
VALUES("Jess",897451235.68,"23","coordenadoris",198.30);

INSERT INTO colaboradores(nome,cpf,idade,cargo,salario)
VALUES("Luis",562871943.56,"26","instruturis",195.00);

INSERT INTO colaboradores(nome,cpf,idade,cargo,salario)
VALUES("Pimenta",563487215.48,"25","Psicologa Mental",220.00);

INSERT INTO colaboradores(nome,cpf,idade,cargo,salario)
VALUES("Zé Tech Generation",158946378.21,"33","animador de aula ",150.90);

INSERT INTO colaboradores(nome,cpf,idade,cargo,salario)
VALUES("Generation",254689723.51,"56","Provedor de evento",140.90);

-- usado para selecionar a tabela criada
SELECT * FROM colaboradores; 

-- usado para verificar os salarios acima de 200
SELECT * FROM colaboradores WHERE salario < 200;

-- usado para verificar os salarios abaixo de 200
SELECT * FROM colaboradores WHERE salario > 200;



UPDATE  colaboradores
SET colaboradores = "Funcionarios"
WHERE id=1;


SET SQL_SAFE_UPDATES = 0;


-- exercicio ecommerce feito pela jess 

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


  
INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Camiseta",19.90,5,"Lacote");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Calça",300.90,10,"Kelvin Cleiton");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Tenis",150.90,10,"Pumba");

SELECT * FROM produtos;


 
SELECT * FROM produtos WHERE preco < 100;


SELECT * FROM produtos WHERE preco > 100;


UPDATE  protudos
SET nome = "camiseta"
WHERE id=1; 


DELETE FROM produtos WHERE id;



SET SQL_SAFE_UPDATES = 0;

