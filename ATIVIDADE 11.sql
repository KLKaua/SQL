DROP DATABASE IF EXISTS JOINS;
CREATE DATABASE JOINS;
USE JOINS;

CREATE TABLE Cargo (
    codCargo INT PRIMARY KEY,
    nomeCargo VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Funcionario (
    codFuncionario INT PRIMARY KEY,
    nomeFuncionario VARCHAR(80) NOT NULL,
    codCargo INT NULL,
    CONSTRAINT FK_Funcionario_Cargo
        FOREIGN KEY (codCargo) REFERENCES Cargo(codCargo)
);

INSERT INTO Cargo (codCargo, nomeCargo) VALUES
(1,'CAIXA'),
(2,'VENDEDOR'),
(3,'GERENTE'),
(4,'PROGRAMADOR');

INSERT INTO Funcionario (codFuncionario, nomeFuncionario, codCargo) VALUES
(1,'JOÃO', 1),
(2,'MARIA', 2),
(3,'CARLOS', 1),
(4,'TADEU', NULL),
(5,'ANA', NULL);

SELECT f.nomeFuncionario, c.nomeCargo
FROM Funcionario AS f
INNER JOIN Cargo AS c
    ON f.codCargo = c.codCargo
ORDER BY f.codFuncionario;

SELECT f.nomeFuncionario, c.nomeCargo
FROM Funcionario AS f
LEFT JOIN Cargo AS c
    ON f.codCargo = c.codCargo
ORDER BY f.codFuncionario;

SELECT f.nomeFuncionario, c.nomeCargo
FROM Funcionario AS f
RIGHT JOIN Cargo AS c
    ON f.codCargo = c.codCargo
ORDER BY f.codFuncionario;
