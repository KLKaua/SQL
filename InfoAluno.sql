SELECT VERSION();
SHOW DATABASES;

CREATE DATABASE alunodb;
SHOW DATABASES;
USE alunodb;
SHOW TABLES;

CREATE TABLE aluno(
idAluno INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR (100),
Nascimento DATE);

SHOW TABLES ; 
DESCRIBE aluno;

INSERT INTO aluno(Nome, Nascimento) VALUES
('João Silva','2000-05-15'),
('Carlos da Silva','1998-11-17'),
('Maria Oliveira','1998-09-23'),
('Sandra Lima','1998-09-25'),
('Carlos Souza','2001-11-30'),
('Ana Lima','2003-02-10'),
('Fabio Souza','2003-03-29'),
('Rafael Costa','1999-07-01');

SELECT * FROM aluno;

SELECT * FROM aluno WHERE Nascimento > '2000-01-01';

SELECT Nascimento AS DATA_NASCIMENTO, Nome AS NOME_ALUNO FROM Alunp;

SELECT * FROM Aluno ORDER BY Nome; 

SELECT * FROM Aluno ORDER BY Nascimento DESC;

SELECT YEAR(Nascimento) AS AnoNascimento, COUNT(*) AS QuantidadeAlunos
FROM Aluno GROUP BY YEAR(Nascimento);


