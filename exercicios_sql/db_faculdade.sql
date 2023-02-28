# create database faculdade;

USE faculdade;

CREATE TABLE departamento (
    nome VARCHAR(100) NOT NULL, 
    descricao VARCHAR(255)
);

ALTER TABLE departamento ADD COLUMN id INT; 

ALTER TABLE departamento ADD CONSTRAINT pk_id PRIMARY KEY (id);

ALTER TABLE departamento ADD CONSTRAINT pk_id PRIMARY KEY AUTO_INCREMENT (id);

ALTER TABLE departamento MODIFY id INT NOT NULL AUTO_INCREMENT;

INSERT INTO departamento (nome, descricao) VALUES ("TI", "Departamento de Tecnologia da Informação");

INSERT INTO departamento (nome, descricao) VALUES ("ADM", "Departamento Administrativo");

CREATE TABLE diretoria (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    departamento_id INT,
    FOREIGN KEY(departamento_id) REFERENCES departamento(id)
);

CREATE TABLE disciplinas (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    departamento_id INT,
    FOREIGN KEY(departamento_id) REFERENCES departamento(id)
);

CREATE TABLE alunos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(255)
);

CREATE TABLE matricula (
	matricula INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    matriculado BOOLEAN NOT NULL,
    alunos_id INT NOT NULL,
    disciplinas_id INT NOT NULL
);

ALTER TABLE departamento RENAME curso;

SHOW TABLES;

INSERT INTO curso (nome, descricao) VALUES ("Ciências da Computação", null);
INSERT INTO curso (nome, descricao) VALUES ("Engenharia da Computação", null);
INSERT INTO curso (nome, descricao) VALUES ("Análise e Desenvolvimento de Sistemas", null);
INSERT INTO curso (nome, descricao) VALUES ("Engenharia Elétrica", null);
INSERT INTO curso (nome, descricao) VALUES ("Engenharia Civil", null);
INSERT INTO curso (nome, descricao) VALUES ("Arquitetura e Urbanismo", null);
INSERT INTO curso (nome, descricao) VALUES ("Biologia", null);

ALTER TABLE disciplinas RENAME COLUMN departamento_id TO curso_id;

UPDATE disciplinas SET nome = "Ciência da Computação" WHERE nome = "Ciências da Computação";

INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Banco de Dados", null, 3);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Banco de Dados", null, 1);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Python", "Python básico, paradigmas de progrmação e aplicabilidades da linguagem", 3);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Python", "Python básico, paradigmas de progrmação e aplicabilidades da linguagem", 1);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Linux", null, 3);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Linux", null, 1);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Cloud", null, 3);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Redes de Computadores", null, 3);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Segurança da Informação", "Noções gerais sobre segurança da informação", 3);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Java", null, 3);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Urbanismo", null, 6);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Anatomia Humana", null, 7);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Desenvolvimento Urbano", null, 6);
INSERT INTO disciplinas (nome, descricao, curso_id) VALUES ("Estrutura de pontes", null, 5);

SELECT * FROM curso RIGHT JOIN disciplinas ON disciplinas.curso_id = curso.id;

SELECT * FROM curso;
SELECT * FROM disciplinas;
SELECT * FROM departamento;

SELECT COUNT(*) FROM departamento;