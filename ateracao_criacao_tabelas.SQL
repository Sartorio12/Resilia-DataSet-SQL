-- CRIAÇÃO DE TABELAS


CREATE TABLE tb_aluno (
    id_aluno SERIAL PRIMARY KEY,
    id_turma int NOT null,
    nome varchar(50) NULL,
    cpf varchar(15) NULL,
    data_nascimento DATE NULL, 
    sexo varchar(1) NULL,
	email varchar(50) NULL
    
);

CREATE TABLE tb_turma(
    id_turma SERIAL PRIMARY KEY,
    data_inicio DATE NULL,
    data_fim DATE NULL,
    id_curso int NOT NULL,
    animal varchar(50) NULL
   
);

CREATE TABLE tb_curso(
    id_curso SERIAL PRIMARY KEY,
    nome varchar(50) NOT NULL

);

CREATE TABLE tb_facilitador(
    id_facilitador SERIAL PRIMARY KEY,
    nome varchar(50) NOT NULL,
    email varchar(50) NOT NULL    
);
CREATE TABLE tb_turma_facilitador(
    id_turma int NOT NULL,
    id_facilitador int NOT NULL,
    CONSTRAINT tb_turma_facilitador_fk_id_turma 
		FOREIGN KEY (id_turma) REFERENCES tb_turma (id_turma),
    CONSTRAINT tb_turma_facilitador_fk_id_facilitador 
		FOREIGN KEY (id_facilitador) REFERENCES tb_facilitador (id_facilitador)
);


