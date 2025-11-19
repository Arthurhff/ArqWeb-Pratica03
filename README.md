## 📚 Gerenciamento de Alunos: Projeto de Banco de Dados Relacional

Este projeto foca na criação e manipulação de um banco de dados relacional simples, utilizando comandos **SQL** no ambiente **MariaDB** (via XAMPP), para gerenciar o cadastro de alunos de uma instituição.

-----

### 🌐 Configuração do Ambiente

| Componente | Detalhe |
| :--- | :--- |
| **Plataforma** | XAMPP Control Panel |
| **SGBD** | MariaDB |
| **Interface** | phpMyAdmin |
| **Nome do DB** | `escola` |

### ✨ Estrutura da Tabela `alunos`

A tabela central `alunos` foi projetada para armazenar informações essenciais sobre cada estudante:

| Campo | Tipo de Dados | Observação |
| :--- | :--- | :--- |
| `id` | `INT` | **PRIMARY KEY** e **AUTO\_INCREMENT** |
| `nome` | `VARCHAR(100)` | Nome completo do aluno |
| `email` | `VARCHAR(100)` | Endereço de email |
| `data_nascimento` | `DATE` | Data de nascimento |
| `curso` | `VARCHAR(50)` | Curso matriculado |
| `ativo` | `BOOLEAN` | Status de matrícula (Ativo/Inativo) |

-----

### ✅ Tarefas (Requisitos SQL)

O projeto exige a execução e demonstração dos seguintes comandos SQL:

  * **DDL (Data Definition Language):**
      * Criação do banco de dados `escola`.
      * Criação da tabela `alunos` conforme a estrutura definida.
  * **DML (Data Manipulation Language):**
      * **INSERT:** Inserir um volume de dados inicial (mínimo 5 registros).
      * **SELECT:** Realizar consultas para listagem geral, filtragem por status (`ativo = TRUE`) e filtragem por campo (`curso`).
      * **ORDER BY:** Organizar a lista de alunos por nome.
      * **UPDATE:** Modificar o valor do campo `curso` para um aluno específico.
      * **DELETE:** Excluir um registro da tabela baseado no `id`.

-----

### 🚀 Guia de Execução no phpMyAdmin

Para configurar o ambiente rapidamente:

1.  Inicie o **Apache** e **MySQL** no **XAMPP Control Panel**.
2.  Acesse o **phpMyAdmin** pelo navegador: `http://localhost/phpmyadmin`.
3.  Utilize a aba **Importar** para carregar o arquivo `escola.sql` (que contém os comandos de criação e inserção).
4.  Clique em **Executar** para criar o banco de dados `escola` e popular a tabela `alunos`.

### 💡 Comandos SQL Essenciais

#### 1\. Criação e Estrutura

```sql
-- Cria o banco de dados
CREATE DATABASE escola;
USE escola;

-- Cria a tabela de alunos
CREATE TABLE alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE,
    curso VARCHAR(50),
    ativo BOOLEAN
);
```

#### 2\. Inserção de Dados (Exemplo)

```sql
INSERT INTO alunos (nome, email, data_nascimento, curso, ativo) VALUES
('Maria Silva', 'maria.silva@email.com', '2001-05-12', 'Sistemas de Informação', TRUE),
('João Pereira', 'joao.pereira@email.com', '2000-09-30', 'Engenharia de Software', TRUE),
('Ana Costa', 'ana.costa@email.com', '2002-02-15', 'Ciência da Computação', FALSE),
('Lucas Mendes', 'lucas.mendes@email.com', '1999-12-01', 'Análise e Desenvolvimento de Sistemas', TRUE),
('Beatriz Lima', 'beatriz.lima@email.com', '2003-03-20', 'Engenharia de Software', TRUE);
```

#### 3\. Consultas Requeridas

```sql
-- 1. Listar todos
SELECT * FROM alunos;

-- 2. Listar apenas ativos
SELECT * FROM alunos WHERE ativo = TRUE;

-- 3. Buscar por curso
SELECT * FROM alunos WHERE curso = 'Engenharia de Software';

-- 4. Ordenar por nome
SELECT * FROM alunos ORDER BY nome;
```

#### 4\. Atualização e Exclusão

```sql
-- Atualizar o curso do aluno com ID 3
UPDATE alunos SET curso = 'Banco de Dados' WHERE id = 3;

-- Excluir o aluno com ID 5
DELETE FROM alunos WHERE id = 5;
```
------
Arthur Fernandes
