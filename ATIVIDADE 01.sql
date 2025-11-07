SELECT VERSION();
SHOW DATABASES;
CREATE DATABASE dbalunos;
SHOW DATABASES;
USE dbalunos;
SHOW TABLES;

CREATE TABLE tabalunos(
idAluno INT PRIMARY KEY AUTO_INCREMENT,
nomeAluno VARCHAR(45),
EnderecoAluno VARCHAR(45),
emailAluno VARCHAR(45)
);

SHOW TABLES;
DESCRIBE tabalunos;

INSERT INTO tabalunos (nomeAluno, EnderecoAluno, emailAluno) VALUES
('José Antonio Rocha', 'Av. Brasil, 120 - São Paulo', 'joserocha@gmail.com'),
('Mario Antunes', 'Rua Graça de Souza, 70 - São Paulo', 'marioantunes@uol.com.br'),
('Pedro Cândido Silva', 'Rua Amazonas, 45 - Ribeirão Preto', 'pedrocandido@uol.com.br'),
('Ana de Souza Carolina', 'Rua Antonio Silva, 70 - Santos', 'anasouza@gmail.com'),
('Paula Andressa Guedes', 'Rua Catanduva, 345 - Natal', 'paulaguedes@gmail.com');

SELECT*FROM tabalunos;
SELECT*FROM tabalunos ORDER BY nomeAluno;
SELECT idAlunos, nomeAluno FROM tabalunos ORDER BY nomeAluno;

DELETE FROM tabalunos WHERE idAluno = 1;

SELECT*FROM tabalunos;

DELETE FROM tabalunos;

SELECT*FROM tabalunos;

DROP TABLE IF EXISTS tabalunos;

CREATE TABLE tabalunos (
idAluno INT PRIMARY KEY AUTO_INCREMENT,
nomeAluno VARCHAR(45),
EnderecoAluno VARCHAR(45),
emailAluno VARCHAR(45)
);
INSERT INTO tabalunos (nomeAluno, EnderecoAluno, emailAluno) VALUES
('José Antonio Rocha', 'Av. Brasil, 120 - São Paulo', 'joserocha@gmail.com'),
('Mario Antunes', 'Rua Graça de Souza, 70 - São Paulo', 'marioantunes@uol.com.br'),
('Pedro Cândido Silva', 'Rua Amazonas, 45 - Ribeirão Preto', 'pedrocandido@uol.com.br'),
('Ana de Souza Carolina', 'Rua Antonio Silva, 70 - Santos', 'anasouza@gmail.com'),
('Paula Andressa Guedes', 'Rua Catanduva, 345 - Natal', 'paulaguedes@gmail.com');

DROP DATABASE IF EXISTS dbalunos;
SHOW DATABASES;