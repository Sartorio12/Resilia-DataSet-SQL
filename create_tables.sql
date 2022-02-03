-- Creating Tables
CREATE TABLE tb_aluno (
    id_aluno SERIAL NOT NULL,
    id_turma int NOT null,
    nome varchar(50) NULL,
    cpf varchar(15) NULL,
    data_nascimento DATE NULL, 
    sexo varchar(1) NULL,
    email varchar(50) NULL,
    ativo integer default 1,
    PRIMARY KEY (id_aluno)
);

CREATE TABLE tb_turma(
    id_turma SERIAL NOT NULL,
    data_inicio DATE NULL,
    data_fim DATE NULL,
    id_curso int NOT NULL,
    animal varchar(50) NULL,
    modulo int NOT NULL,
    PRIMARY KEY (id_turma)
);

CREATE TABLE tb_curso(
    id_curso SERIAL NOT NULL,
    nome varchar(50) NOT NULL,

    PRIMARY KEY (id_curso)
);

CREATE TABLE tb_facilitador(
    id_facilitador SERIAL NOT NULL,
    id_colaborador INT NOT NULL,
    categoria varchar(50) NOT NULL,
    PRIMARY KEY (id_facilitador)
);

CREATE TABLE tb_colaborador(
    id_colaborador SERIAL NOT NULL,
    nome varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    departamento varchar(50) NOT NULL,
    PRIMARY KEY (id_colaborador)
);

CREATE TABLE tb_turma_facilitador(
    id_turma int NOT NULL,
    id_facilitador int NOT NULL,
    CONSTRAINT tb_turma_facilitador_fk_id_turma FOREIGN KEY (id_turma) REFERENCES tb_turma (id_turma),
    CONSTRAINT tb_turma_facilitador_fk_id_facilitador FOREIGN KEY (id_facilitador) REFERENCES tb_facilitador (id_facilitador)
);

CREATE TABLE aluno_update_audit(
	id_aluno integer,
	valor_antigo int,
	valor_novo int,
	data_insert timestamp
);
