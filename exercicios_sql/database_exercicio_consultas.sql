CREATE DATABASE clinica;

USE clinica;

drop table if exists consultas;
drop table if exists medicos;
drop table if exists pacientes;
drop table if exists quartos;


CREATE TABLE quartos(
	id INT PRIMARY KEY AUTO_INCREMENT,
	andar SMALLINT NOT NULL,
	capacidade SMALLINT
);


CREATE TABLE medicos(
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT NOT NULL,
	especialidade CHAR(20),
	cpf VARCHAR(11) UNIQUE,
	cidade VARCHAR(30),
	id_quarto INT,
	FOREIGN KEY (id_quarto) REFERENCES quartos (id) -- se usar foreign key tem que ter a coluna nas 2 tabelas!
);


CREATE TABLE pacientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT NOT NULL,
	cidade CHAR(30),
	cpf VARCHAR(11) UNIQUE
);


CREATE TABLE consultas(
  	id     INT PRIMARY KEY AUTO_INCREMENT,
	id_medico     INT,
	id_paciente     INT,
	data_hora      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	doenca VARCHAR(40) NOT NULL,
  	FOREIGN KEY (id_medico) REFERENCES medicos (id),
	FOREIGN KEY (id_paciente) REFERENCES pacientes (id)
);

CREATE INDEX doenca ON consultas(doenca);


-- ambulatorios
INSERT INTO quartos(andar, capacidade)
VALUES (1, 2);

INSERT INTO quartos(andar, capacidade)
VALUES (1, 4);

INSERT INTO quartos(andar, capacidade)
VALUES (2, 1);

INSERT INTO quartos(andar, capacidade)
VALUES (2, 3);

INSERT INTO quartos(andar, capacidade)
VALUES (2, 2);

INSERT INTO quartos(andar, capacidade)
VALUES (3, 5);

INSERT INTO quartos(andar, capacidade)
VALUES (3, 7);

INSERT INTO quartos(andar, capacidade)
VALUES (4, 10);

INSERT INTO quartos(andar, capacidade)
VALUES (4, 10);

INSERT INTO quartos(andar, capacidade)
VALUES (4, 12);


-- medicos
INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('joao', 40, 'ortoperia', '10000100000', 'florianopolis', 1);

UPDATE medicos SET especialidade = "ortopedia" WHERE id = 1;

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('maria', 42, 'traumatologia', '10000100001', 'blumenau', 2);

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('pedro', 51, 'pediatria', '10000100002', 'sao jose', 3);

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('carlos', 28, 'ortopedia', '10000100003', 'joinville', 4);

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('marcia', 33, 'neurologia', '10000100004', 'santo andre', 5);

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('eduarda', 30, 'neurologia', '10000100666', 'recife', 5);

INSERT INTO medicos (nome, idade, especialidade, cpf, cidade, id_quarto)
VALUES ('pedro', 44, 'cardiologia', '10000880666', 'santo andre', 5);


-- pacientes
INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('ana', 20, 'florianopolis', '12345678910');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('paulo', 24, 'santo andre', '12345678911');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('lucia', 30, 'sao paulo', '12345678912');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('carlos', 28, 'joinville', '12345678913');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('antonio', 80, 'rio de janeiro', '12345678914');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('regiane', 57, 'salvador', '12345678915');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('vera', 70, 'natal', '12345678916');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('rita', 50, 'recife', '12345678917');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('roberto', 10, 'são luis', '12345678918');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('eduarda', 30, 'recife', '12345666618');

INSERT INTO pacientes (nome, idade,	cidade,	cpf)
VALUES ('januário', 77, 'natal', '12222666618');

INSERT INTO pacientes (nome, idade,	cpf)
VALUES ('jorge', 38, '11144466618');

INSERT INTO pacientes (nome, idade)
VALUES ('gildo', 60);


INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (1, 1, '2023-01-02 07:00:00', 'sarampo');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (1, 4, '2023-01-02 08:30:00', 'fratura');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (2, 2, '2023-01-02 10:00:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (2, 2, '2023-01-02 16:00:00', 'fratura');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (2, 6, '2023-01-04 10:00:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (3, 7, '2023-01-04 19:00:00', 'gastrite');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (3, 3, '2023-01-04 11:00:00', 'tosse');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (3, 5, '2023-01-07 09:00:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 6, '2023-01-07 10:00:00', 'queda');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 4, '2023-01-07 14:30:00', 'garganta inflamada');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 1, '2023-01-08 16:00:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 4, '2023-01-08 17:00:00', 'rotina');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 8, '2023-01-08 17:30:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 1, '2023-01-10 08:00:00', 'gripe');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 4, '2023-01-10 13:30:00', 'virose');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 8, '2023-01-10 14:00:00', 'rotina');

INSERT INTO consultas (id_medico, id_paciente, data_hora, doenca) 
VALUES (4, 8, '2023-01-11 16:31:40', 'tosse');


BEGIN;

DELETE FROM consultas WHERE id = 17;

ROLLBACK;

COMMIT;


SHOW TABLES;

SELECT * FROM consultas;
SELECT * FROM medicos;
SELECT * FROM pacientes;
SELECT * FROM quartos;

-- DQL PDF:

-- LIMIT
SELECT nome FROM medicos WHERE nome LIKE "%AR%" LIMIT 1;

-- ORDER BY ASC | DESC
SELECT nome FROM medicos ORDER BY nome ASC;
SELECT nome FROM medicos ORDER BY idade DESC;

-- IS NULL | IS NOT NULL
SELECT nome FROM pacientes WHERE cidade IS NULL;

-- DISTINCT
SELECT DISTINCT doenca FROM consultas;

-- EXISTS
SELECT nome FROM medicos WHERE EXISTS (SELECT doenca FROM consultas WHERE doenca = "sarampo"); 

-- IN
SELECT nome, especialidade FROM medicos WHERE especialidade IN ("ortopedia", "neurologia");

-- BETWEEN
SELECT nome, idade FROM medicos WHERE idade BETWEEN 30 AND 50;

-- Funções de Agregação:
-- COUNT()
SELECT COUNT(id) AS total FROM medicos;

-- AVG()
SELECT AVG(idade) FROM medicos WHERE especialidade = "neurologia";

-- SUM()
SELECT SUM(capacidade) FROM quartos;

-- MIN() | MAX()
SELECT MIN(idade) FROM medicos;
SELECT MAX(idade) FROM medicos WHERE especialidade = "ortopedia";

-- GROUP BY | HAVING
SELECT COUNT(id) AS total, especialidade FROM medicos GROUP BY especialidade;
SELECT AVG(idade) AS media_idade, especialidade FROM medicos GROUP BY especialidade HAVING COUNT(especialidade) > 1;

-- JOINS:
-- INNER JOIN
SELECT c.data_hora, c.doenca, m.nome FROM consultas c INNER JOIN medicos m ON id_medico = m.id;

-- LEFT JOIN
SELECT c.data_hora, c.doenca, m.nome FROM consultas c LEFT JOIN medicos m ON id_medico = m.id;

-- RIGHT JOIN
SELECT c.data_hora, c.doenca, m.nome FROM consultas c RIGHT JOIN medicos m ON id_medico = m.id;



-- ATIVIDADE:
-- Listar os nomes de todos os pacientes:
SELECT nome FROM pacientes;

-- Quantos médicos estão cadastrados?
SELECT COUNT(id) AS total_medicos FROM medicos;

-- Quais os nomes dos pacientes que fizeram mais de uma consulta?
SELECT COUNT(id_paciente) AS total, p.nome FROM pacientes p INNER JOIN consultas ON id_paciente = p.id GROUP BY id_paciente HAVING total > 1;

-- listar todos os médicos com especialidade de ortopedia
SELECT nome FROM medicos WHERE especialidade = "ortopedia";

-- listar apenas os pacientes maiores de 30 anos
SELECT nome, idade FROM pacientes WHERE idade > 30;

-- Qual a quantidade de pacientes com idade acima de 40 anos?
SELECT COUNT(id) AS total FROM pacientes WHERE idade > 40;

-- Quais pacientes não fizeram nenhuma consulta?
SELECT nome FROM pacientes LEFT JOIN consultas ON id_paciente = pacientes.id WHERE consultas.id_paciente IS NULL;

-- Qual a média de idade dos pacientes?
SELECT AVG(idade) AS media_idade_pacientes FROM pacientes;

-- Qual o paciente mais novo?
SELECT MIN(idade) AS menor_idade_paciente FROM pacientes;

-- Qual o paciente mais velho?
SELECT MAX(idade) AS menor_idade_paciente FROM pacientes;

-- Quais cidades possuem mais pacientes?
SELECT COUNT(id) AS total_pacientes, cidade FROM pacientes GROUP BY cidade ORDER BY total_pacientes DESC;

-- Quantos médicos estão acima de 40 anos?
SELECT COUNT(id) AS total FROM medicos WHERE idade > 40;

-- Qual a capacidade da sala onde o médico Pedro atende?
SELECT m.nome, q.capacidade FROM medicos m INNER JOIN quartos q ON id_quarto = q.id WHERE m.nome = "pedro";

-- Qual a capacidade da sala onde a médica Márcia atende?
SELECT m.nome, q.capacidade FROM medicos m INNER JOIN quartos q ON id_quarto = q.id WHERE m.nome = "marcia";

-- Quantas consultas foram feitas por motivo de virose?
SELECT COUNT(id) AS total FROM consultas WHERE doenca = "virose";


-- listar o nome e idade dos pacientes cujo motivo de consulta foi fratura
-- listar o nome dos médicos que fizeram atendimento de tosse
-- listar o nome dos médicos que fizeram atendimento de virose
-- listar o nome dos médicos e a capacidade dos quartos onde atendem
-- [desafio] quantas consultas aconteceram no dia 04/janeiro?
-- [desafio] quantas consultas aconteceram no mês de janeiro?


SELECT * FROM consultas;
SELECT * FROM medicos;
SELECT * FROM pacientes;
SELECT * FROM quartos;







-- EXERCÍCIOS

SELECT nome FROM pacientes;
SELECT COUNT(id) AS total FROM medicos;

SELECT COUNT(*) AS total, p.nome FROM pacientes AS p INNER JOIN consultas ON id_paciente = p.id GROUP BY p.nome having total > 2;

SELECT nome FROM medicos WHERE especialidade = "ortopedia";

SELECT nome, idade FROM pacientes WHERE idade > 30;

SELECT COUNT(id) AS total FROM pacientes WHERE idade > 40;

# PARTE 2:

SELECT * FROM pacientes INNER JOIN consultas ON id_paciente = pacientes.id WHERE consultas.id_paciente IS NULL;

SELECT * FROM pacientes p
WHERE not exists (select * FROM consultas c WHERE  p.id = c.id_paciente);

SELECT AVG(idade) FROM pacientes;

SELECT MIN(idade) FROM pacientes;

SELECT MAX(idade) FROM pacientes;

UPDATE pacientes SET cidade = "natal" WHERE cidade = "florianopolis";

SELECT cidade, count(*) FROM pacientes group by  cidade order by count(*) DESC LIMIT 1;

SELECT COUNT(id) AS total FROM medicos WHERE idade > 40;

SELECT capacidade FROM quartos q INNER JOIN medicos m ON q.id = m.id_quarto WHERE m.nome = 'pedro';

SELECT capacidade FROM quartos q INNER JOIN medicos m ON q.id = m.id_quarto WHERE m.nome = 'marcia';

SELECT COUNT(id) AS total FROM consultas WHERE doenca = "virose";

SELECT nome, idade FROM pacientes INNER JOIN consultas ON id_paciente = pacientes.id WHERE doenca LIKE "%fratura%";

SELECT nome FROM medicos INNER JOIN consultas ON id_medico = medicos.id WHERE doenca = "tosse";

SELECT nome FROM medicos INNER JOIN consultas ON id_medico = medicos.id WHERE doenca = "virose";

SELECT medicos.nome, quartos.capacidade FROM medicos INNER JOIN quartos ON id_quarto = quartos.id;

SELECT COUNT(id) AS total FROM consultas WHERE data_hora ;



