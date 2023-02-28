CREATE DATABASE empresa;

USE empresa;

CREATE TABLE setor (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE squad (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    setor_id INT,
    FOREIGN KEY (setor_id) REFERENCES setor (id)
);

CREATE TABLE projetos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    dataInicio DATE,
    dataTermino DATE,
    squad_id INT,
    FOREIGN KEY (squad_id) REFERENCES squad (id)
);

CREATE TABLE colaboradores (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL 
);

CREATE TABLE projetos_colaboradores (
	projetos_id INT NOT NULL,
    colaboradores_id INT NOT NULL,
    FOREIGN KEY (projetos_id) REFERENCES projetos (id),
    FOREIGN KEY (colaboradores_id) REFERENCES colaboradores (id)
);

INSERT INTO setor (nome, descricao) VALUES ("TI - Devs", "Setor das equipes de desenvolvedores");
INSERT INTO setor (nome, descricao) VALUES ("TI - Dados", "Setor das equipes de Analistas e Engenheiros de Dados");
INSERT INTO setor (nome, descricao) VALUES ("TI - Cloud", "Setor das equipes de infraestrutura Cloud");
INSERT INTO setor (nome, descricao) VALUES ("ADM", "Setor administrativo");
INSERT INTO setor (nome, descricao) VALUES ("RH", "Setor de Recursos Humanos");
INSERT INTO setor (nome, descricao) VALUES ("INFRA", "Setor de infraestrutura logística da empresa");

UPDATE setor SET descricao = "Setor das equipes de Desenvolvedores" WHERE id = 1;

SELECT * FROM setor;

INSERT INTO squad (nome, descricao, setor_id) VALUES ("Eng. Dados Azure 01", "Engenharia de Dados Azure", 2);
INSERT INTO squad (nome, descricao, setor_id) VALUES ("Eng. Dados Azure 02", "Engenharia de Dados Azure", 2);
INSERT INTO squad (nome, descricao, setor_id) VALUES ("Eng. Dados AWS 01", "Engenharia de Dados AWS", 2);
INSERT INTO squad (nome, descricao, setor_id) VALUES ("Dev. Web Backend Java", "Desenvolvimento Web Backend Java", 1);
INSERT INTO squad (nome, descricao, setor_id) VALUES ("Dev. Web Backend Java 02", "Desenvolvimento Web Backend Java", 1);
INSERT INTO squad (nome, descricao, setor_id) VALUES ("Dev. Web Backend C# 01", "Desenvolvimento Web Backend Java", 1);
INSERT INTO squad (nome, descricao, setor_id) VALUES ("Dev. Web Frontend Angular", "Desenvolvimento Web Frontend Angular", 1);
INSERT INTO squad (nome, descricao, setor_id) VALUES ("Análise Dados Python/BI", "Análise de Dados Python/BI", 2);
INSERT INTO squad (nome, descricao) VALUES ("Outros", null);

UPDATE squad SET descricao = "Desenvolvimento Web Backend C#" WHERE id = 6;

ALTER TABLE equipes RENAME TO squad;

SELECT * FROM squad;

SHOW TABLES;


# JOINS:
SELECT * FROM setor AS se INNER JOIN squad AS sq ON setor_id = se.id;
SELECT * FROM setor AS se LEFT JOIN squad AS sq ON setor_id = se.id;
SELECT * FROM setor AS se LEFT JOIN squad AS sq ON setor_id = se.id;
SELECT * FROM setor AS se RIGHT JOIN squad AS sq ON setor_id = se.id;

#SELECTS (VÁRIOS)
SELECT * FROM squad;
SELECT nome FROM squad LIMIT 3;
SELECT DISTINCT descricao FROM squad;
SELECT nome, descricao FROM squad ORDER BY nome ASC; #DESC
SELECT nome FROM squad WHERE descricao IS NULL;
SELECT nome FROM squad WHERE descricao IS NOT NULL;
SELECT * FROM squad WHERE descricao LIKE "%web%";
SELECT nome FROM squad WHERE descricao LIKE "%web%";
SELECT descricao FROM squad WHERE descricao LIKE "%web%";
SELECT * FROM squad WHERE EXISTS (SELECT id FROM squad WHERE id < 4);
SELECT * FROM squad WHERE nome IN ("Outros", "Análise Dados Python/BI");
SELECT * FROM squad WHERE nome NOT IN ("Outros", "Análise Dados Python/BI");
SELECT * FROM squad WHERE id BETWEEN 2 AND 6;
SELECT COUNT(*) FROM squad;
SELECT COUNT(nome) FROM squad WHERE descricao LIKE "%web%";
SELECT AVG(id) FROM squad; #AVG igual a average. id não é um bom uso
SELECT AVG(id) FROM squad WHERE descricao LIKE "%web%";
SELECT SUM(id) FROM squad;
SELECT MIN(id) FROM squad;
SELECT MAX(id) FROM squad;
SELECT COUNT(id), nome FROM squad GROUP BY descricao;
SELECT COUNT(id) AS total, descricao FROM squad GROUP BY descricao;
SELECT COUNT(id) AS total, descricao FROM squad GROUP BY descricao HAVING total > 1;

SELECT COUNT(squad.id) AS TOTAL FROM squad INNER JOIN setor ON setor_id = setor.id;