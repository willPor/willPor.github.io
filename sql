CREATE DATABASE Faculdade;
USE Faculdade;
CREATE TABLE Cursos (
    id_curso INT PRIMARY KEY,
    nome_curso VARCHAR(10) NOT NULL
);

CREATE TABLE Disciplinas (
    id_disciplina INT PRIMARY KEY,
    nome_disciplina VARCHAR(10) NOT NULL
);

CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY,
    nome_aluno VARCHAR(10) NOT NULL,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

CREATE TABLE Notas (
    id_nota INT PRIMARY KEY,
    nota INT NOT NULL,
    id_disciplina INT,
    id_aluno INT,
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);
-- Inserir os cursos na tabela "Cursos"
INSERT INTO Cursos (id_curso, nome_curso)
VALUES
(1, 'Análise e Desenvolvimento de Sistemas'),
(2, 'Banco de Dados'),
(3, 'Ciência de Dados'),
(4, 'Desenvolvimento Mobile'),
(5, 'Engenharia da Computação'),
(6, 'Engenharia de Software'),
(7, 'Gestão da Tecnologia da Informação'),
(8, 'Jogos Digitais'),
(9, 'Redes de Computadores');
