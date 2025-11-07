CREATE DATABASE DB_TAREFAS5;
USE DB_TAREFAS5;

CREATE TABLE Gerente(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(80) NOT NULL, 
email VARCHAR (120) UNIQUE
);

CREATE TABLE Departamento(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(80) NOT NULL, 
gerente_id INT NOT NULL UNIQUE,
CONSTRAINT FK_Departamento_Gerente
FOREIGN KEY (gerete_id) REFERENCES gerente(id)
);

INSERT INTO Gerente (nome, email) VALUES
('Ana Prado','ana@empresa.com'),
('Bruno Costa','bruno@empresa.com'),
('Carlas Dias','carla@empresa.com');

INSERT INTO Departamento (nome, gerente_id) VALUES
('Engenharia',1), -- Ana
('RH', 2); -- Bruno

SELECT * FROM Gerente ORDER BY id;
SELECT * FROM Departamento ORDER BY id;

INSERT INTO Departamento (nome, gerente_id)
VALUES ('Vendas', 999); -- ERRO 1452 (FK)

INSERT INTO Departamento (nome, gerente_id)
VALUES ('Financeiro', 1); -- ERRO 1062 de UNIQUE em gerente_id




