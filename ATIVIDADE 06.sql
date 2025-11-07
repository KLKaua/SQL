CREATE DATABASE DB_TAREFAS6;
USE DB_TAREFAS6;

CREATE TABLE CURSO(
idCurso INT PRIMARY KEY AUTO_INCREMENT,
nomeCurso VARCHAR(100) NOT NULL
);

CREATE TABLE ALUNO(
idAluno INT PRIMARY KEY AUTO_INCREMENT,
nomeAluno VARCHAR(100) NOT NULL,
emailAluno VARCHAR(120) NOT NULL UNIQUE,
enderecoAluno VARCHAR(150),
idCurso INT NOT NULL,
CONSTRAINT fk_aluno_curso
FOREIGN KEY (idCurso) REFERENCES CURSO(idCurso)
);

INSERT INTO CURSO (nomeCurso) VALUES
('Ciencia da Computação'),
('Sistema de Informação'),
('Engenharia de Software'),
('TECNOLOGIA ADS');


INSERT INTO ALUNO (nomeAluno, emailAluno, enderecoAluno, idCurso) VALUES 
('Ana silva','ana.silva@example.com', 'Rua A, 100',1),
('Bruno lima','bruno.lima@example.com','Rua B, 200',1),
('Clara Souza','clara.souza@example.com','Av. D,300',2),
('Diego Reis','diego.reis@example.com','Av D, 400',3),
('Eva Rocha','eva.rocha@example.com','Rua E, 500', 3);

SELECT * FROM ALUNO;
SELECT * FROM CURSO;

INSERT INTO ALUNO (nomeALUNO, emailALUNO, enderecoALUNO, idCURSO)
VALUES ('teste sem curso','sem.curso@example.com','rua X',NULL);

INSERT INTO ALUNO (nomeALUNO,emailALUNO,enderecoALUNO,idALUNO)
VALUES ('teste curso inexistente','nao.existe@example.com','Rua y',9999);

INSERT INTO ALUNO (nomeAluno, emailALUNO, enderecoAluno, idCurso)
VALUES ('Teste Curso Inexiatente', 'nao.existe@example.com', 'Rua y',9999);

DELETE FROM CURSO WHERE idCurso = 1;