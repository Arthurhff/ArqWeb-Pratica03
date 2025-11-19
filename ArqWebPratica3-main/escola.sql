-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS escola;
USE escola;

-- Criação da tabela alunos
CREATE TABLE IF NOT EXISTS alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE,
    curso VARCHAR(50),
    ativo BOOLEAN
);

-- Inserção de dados
INSERT INTO alunos (nome, email, data_nascimento, curso, ativo) VALUES
('Maria Silva', 'maria.silva@email.com', '2001-05-12', 'Sistemas de Informação', TRUE),
('João Pereira', 'joao.pereira@email.com', '2000-09-30', 'Engenharia de Software', TRUE),
('Ana Costa', 'ana.costa@email.com', '2002-02-15', 'Ciência da Computação', FALSE),
('Lucas Mendes', 'lucas.mendes@email.com', '1999-12-01', 'Análise e Desenvolvimento de Sistemas', TRUE),
('Beatriz Lima', 'beatriz.lima@email.com', '2003-03-20', 'Engenharia de Software', TRUE);

-- Consultas SQL
SELECT * FROM alunos;
SELECT * FROM alunos WHERE ativo = TRUE;
SELECT * FROM alunos WHERE curso = 'Engenharia de Software';
SELECT * FROM alunos ORDER BY nome;

-- Atualização de dados
UPDATE alunos SET curso = 'Banco de Dados' WHERE id = 3;

-- Exclusão de dados
DELETE FROM alunos WHERE id = 5;
