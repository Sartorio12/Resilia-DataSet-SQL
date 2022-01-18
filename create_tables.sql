-- Creating Tables
CREATE TABLE tb_aluno (
    id_aluno SERIAL NOT NULL,
    id_turma int NOT null,
    nome varchar(50) NULL,
    cpf varchar(15) NULL,
    data_nascimento DATE NULL, 
    sexo varchar(1) NULL,
    email varchar(50) NULL,
    ativo integer default 1
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

-- Inserting Values
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('1','1','Adérito Girã','406.510.041-01','1993-01-06','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('2','1','Arachane Mourato','674.221.086-90','1980-12-25','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('3','1','Armanda Girã','256.816.505-70','1988-12-06','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('4','1','Augusta Aragão','058.441.433-10','1989-12-29','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('5','1','Boaventura Vicario','666.586.503-73','2000-11-24','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('6','1','Borrás Figueiroa','324.320.411-94','1996-04-17','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('7','1','Burtira Vilhena','835.448.320-70','1991-10-31','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('8','1','Conceição Cuaresma','681.233.441-39','1989-11-15','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('9','1','Constança Granjeia','786.205.075-40','1994-12-12','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('10','1','Cosperranho Novalles','872.151.532-82','1982-07-14','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('11','1','Crispim Cascais','104.232.823-44','1987-06-18','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('12','1','Deolindo Ilha','401.686.332-56','1997-06-21','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('13','1','Eduarda Suaçuna','485.078.306-68','1990-08-29','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('14','1','Esmeralda Herrera','342.081.218-31','1996-08-16','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('15','1','Eulália Bonilla','585.500.331-03','2002-07-14','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('16','1','Evandro Becerril','815.233.305-03','1985-02-25','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('17','1','Evandro Piñero','018.481.108-20','1984-03-03','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('18','1','Fabiano Martínez','236.880.042-56','1991-10-15','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('19','1','Filipe Ferreyra','261.014.816-03','1982-07-11','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('20','1','Flávio Valiente','173.373.424-46','1997-11-02','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('21','1','Frutuoso Mourão','228.208.561-28','1984-12-04','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('22','1','Gerardo Caniça','635.000.417-52','1989-08-01','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('23','1','Ginéculo Bonilla','370.421.362-41','1980-09-16','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('24','1','Jorgina Pitanga','024.280.430-64','1992-07-23','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('25','1','José Lameira','417.082.227-74','2000-06-24','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('26','1','Lúcia Imbassaí','451.378.887-96','1998-01-08','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('27','1','Martim Faustino','727.720.327-52','1997-11-26','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('28','1','Melinda Coelho','215.238.080-04','1999-07-07','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('29','1','Micael Vila-Chã','066.552.721-73','1996-11-28','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('30','1','Micael Águeda','858.805.384-51','1992-03-27','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('31','1','Milu Salguero','874.184.455-63','1992-05-31','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('32','1','Moisés Rodríguez','643.472.826-30','1997-06-27','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('33','1','Márcia Vega','411.550.656-38','2000-04-25','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('34','1','Mário Díaz','747.484.168-15','1998-05-03','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('35','1','Mário Peixoto','216.076.715-81','1982-02-11','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('36','1','Nicolau Roriz','615.200.014-95','1983-01-29','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('37','1','Otília Freyre','078.036.506-27','1984-08-06','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('38','1','Palmiro Hernández','871.073.310-86','1990-05-03','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('39','1','Patrício Bentes','343.678.607-10','1985-09-17','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('40','1','Piedade Norões','377.063.258-30','1986-07-16','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('41','1','Rebeca Lagos','561.252.434-00','1991-01-29','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('42','1','Reinaldo Bogado','278.336.567-71','1987-06-21','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('43','1','Salomé Pirassununga','220.862.662-19','1986-08-29','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('44','1','Silvano Gameiro','321.106.810-47','1997-06-29','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('45','1','Silvério Pais','382.360.817-70','1993-12-04','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('46','1','Urbano Caneira','111.345.576-47','1999-06-16','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('47','1','Valmor Sarmento','107.744.866-00','1980-08-23','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('48','1','Veridiana Medeiros','646.504.061-10','2002-02-04','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('49','1','Xavier Vázquez','124.433.044-26','1993-01-25','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('50','1','Zélia Quinterno','740.647.735-00','2000-08-11','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('51','2','Adriano Quixadá','845.802.634-13','1991-07-13','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('52','2','Aleixo Arruda','532.480.882-22','1983-08-31','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('53','2','Alvito Mata','316.065.001-47','1998-10-18','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('54','2','Amélia Bencatel','521.141.785-28','1999-11-02','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('55','2','Aniana Quintero','163.674.133-91','1990-09-26','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('56','2','António Carvalho','540.725.166-35','2001-01-03','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('57','2','Antônio Campos','782.050.875-20','1983-06-11','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('58','2','Araribóia Cintra','568.728.631-45','1997-11-16','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('59','2','Augusto Conceição','578.363.585-50','1995-04-25','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('60','2','Aurélia Damasceno','372.302.786-51','1989-01-06','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('61','2','Bukake Peña','044.433.066-68','1992-08-02','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('62','2','Clarisse Herrera','210.666.760-46','1994-11-28','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('63','2','Constantino Paula','227.475.003-30','1999-10-01','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('64','2','Cora Lagos','657.560.645-83','1993-01-18','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('65','2','Cássio Bacelar','626.073.877-36','1983-05-23','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('66','2','Célia Valgueiro','464.270.122-23','1991-11-29','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('67','2','Estêvão Girón','015.261.782-57','1985-12-09','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('68','2','Evangelista Temes','844.134.865-01','1992-04-15','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('69','2','Ferdinando Carvalho','554.187.521-89','1997-07-19','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('70','2','Firmino Marroquim','845.434.754-29','1997-06-21','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('71','2','Gabriela Collaço','013.403.743-07','1996-06-27','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('72','2','Geraldo Castelbranco','866.548.014-58','1982-12-25','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('73','2','Geraldo Leça','168.782.187-99','1991-07-06','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('74','2',' Walter Assumpção','428.311.250-06','1983-10-31','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('75','2','Inês Reyes','078.123.317-84','1983-06-10','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('76','2','Isidro Velasco','112.158.128-50','1989-06-26','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('77','2','Iuri Acuña','334.444.787-47','2001-07-01','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('78','2','Jamari Chamusca','424.075.887-46','1980-11-05','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('79','2','Laurinda Moreno','822.222.365-84','1993-08-05','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('80','2','Lavínia Arantes','706.087.446-11','2002-02-27','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('81','2','Lavínia Linhares','382.476.303-62','1987-05-25','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('82','2','Mariano Mansilha','825.866.602-93','1987-08-10','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('83','2','Mem Baldaia','728.866.442-26','1985-09-11','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('84','2','Paulo Diegues','787.621.740-02','1980-09-16','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('85','2','Quintiliana Paranaguá','452.761.375-87','1993-07-20','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('86','2','Quitério Quinzeiro','111.156.306-36','1991-02-12','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('87','2','Raimundo Neres','156.133.776-50','1997-07-25','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('88','2','Ramão Vilaça','083.546.747-38','1988-10-11','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('89','2','Reinaldo Sá','666.674.101-34','1985-02-19','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('90','2','Remo Avelar','346.271.242-01','1988-11-25','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('91','2','Roberta Fontes','135.422.121-48','1996-09-16','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('92','2','Rosana Lousã','013.032.232-60','1989-07-27','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('93','2','Rosaura Ochoa','402.186.247-19','1988-05-19','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('94','2','Rômulo   Velasques','347.427.656-56','1990-07-05','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('95','2','Sónia Durán','217.870.420-49','1998-12-08','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('96','2','Telo Pinheiro','343.252.357-28','1994-05-27','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('97','2','Tomé Caetano','264.111.670-79','1985-12-21','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('98','2','Ubirajara Telles','414.556.437-50','2002-03-04','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('99','2','Zara Guedelha','545.775.557-60','1991-08-24','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome,  cpf, data_nascimento, sexo) VALUES ('100','2','Zara Hollanda','412.270.020-50','1999-09-12','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('101','3','Pedro Henrique Fogaça','435.604.722-29','2001-03-07','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('102','3','Eduarda campos','821.818.833-94','1998-10-16','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('103','3','Caroline Moreira','002.856.334-49','1980-12-09','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('104','3','Alice ferreira','083.478.144-14','1987-04-28','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('105','3','Emilly Azevedo','634.211.426-96','1990-04-20','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('106','3','Lívia Fogaça','777.335.543-65','1995-03-15','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('107','3','Cauê Cavalcanti','112.860.442-60','1985-12-14','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('108','3','Matheus Ferreira','846.847.805-97','1992-07-03','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('109','3','Laís da Rosa','708.031.632-40','1980-07-15','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('110','3','Maria eduarda vieira','325.852.448-30','1980-12-05','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('111','3','Kevin gomes','812.801.841-83','1984-02-05','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('112','3','Lucas Gabriel Souza','404.486.207-90','1986-04-09','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('113','3','Noah Ferreira','700.218.424-50','2001-10-02','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('114','3','Sofia Nunes','128.016.878-12','2002-03-29','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('115','3','Beatriz Nunes','718.217.464-22','1981-11-02','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('116','3','Samuel das Neves','127.153.326-02','1986-12-29','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('117','3','Camila Alves','804.168.800-45','1998-07-12','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('118','3','Sophia aragão','608.081.803-55','1980-12-03','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('119','3','Renan Viana','862.062.843-79','1990-11-05','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('120','3','Nicolas da Mata','282.558.612-97','1985-05-03','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('121','3','Nicole Moura','208.308.885-94','1999-04-20','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('122','3','Breno Correia','066.257.732-98','1990-07-16','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('123','3','Gustavo Martins','883.400.653-43','1985-10-26','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('124','3','João Guilherme Moraes','546.461.145-26','1991-08-26','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('125','3','João gabriel souza','645.841.106-54','1984-12-29','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('126','3','Maria Sophia Cavalcanti','413.670.518-27','1982-07-20','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('127','3','Lara Barbosa','635.658.014-33','1981-02-11','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('128','3','Bryan Caldeira','215.030.864-96','1997-07-16','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('129','3','Ana da luz','703.313.388-07','1992-06-14','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('130','3','Pedro Lucas Nascimento','001.455.864-56','1985-08-02','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('131','3','Marcelo da Costa','606.444.705-26','1995-06-19','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('132','3','Cauã Freitas','074.887.688-09','1996-02-27','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('133','3','Maria luiza cardoso','222.288.612-00','1996-04-26','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('134','3','Vitória Vieira','333.614.305-50','1982-05-01','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('135','3','Pedro Miguel Gomes','155.665.754-47','1987-07-05','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('136','3','Catarina gonçalves','537.638.628-70','1999-10-14','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('137','3','Manuela oliveira','588.522.545-10','1998-01-22','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('138','3','Ana julia azevedo','814.562.724-97','1993-04-17','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('139','3','Luiz henrique campos','757.418.168-35','1992-12-01','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('140','3','Luiza almeida','206.154.553-01','1980-11-25','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('141','3','Renan Duarte','206.061.613-17','1995-04-30','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('142','3','Yasmin Melo','044.308.147-67','1999-10-18','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('143','3','Giovanna da rosa','880.140.486-79','2001-04-17','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('144','3','Lucas gabriel da cunha','317.767.015-34','1991-09-12','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('145','3','Luiza monteiro','543.013.788-04','1985-07-25','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('146','3','Renan Cunha','630.665.645-68','1992-09-12','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('147','3','Lorenzo Aragão','167.136.143-10','1986-07-16','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('148','3','Samuel Aragão','030.256.664-39','1987-08-03','M');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('149','3','Manuela azevedo','352.304.851-67','1981-10-28','F');
INSERT INTO tb_aluno (id_aluno, id_turma, nome, cpf, data_nascimento, sexo) VALUES ('150','3','Enrico das Neves','003.475.740-68','1987-03-26','M');

INSERT INTO tb_curso (id_curso, nome) VALUES ('1', 'Web Development');
INSERT INTO tb_curso (id_curso, nome) VALUES ('2', 'Data Analytics');

INSERT INTO tb_turma (id_turma, data_inicio, data_fim, id_curso, animal) VALUES ('1', '2020-01-01', '2020-06-01', '1', 'macaco');
INSERT INTO tb_turma (id_turma, data_inicio, data_fim, id_curso, animal) VALUES ('2', '2020-06-01', '2020-12-01', '1', 'elefante');
INSERT INTO tb_turma (id_turma, data_inicio, data_fim, id_curso, animal) VALUES ('3', '2021-01-01', '2021-06-01', '2', 'cachorro');

INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('1', 'Pedro Henrique Rodrigues', 'pedrohenriquer@xpto.com');
INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('2', 'Isabela Silvana dos Santos', 'isasilva@xpto.com');
INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('3', 'Priscila Guedes da Silva', 'priguedes@xpto.com');
INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('4', 'Teresa Betina Nunes', 'teresabet@xpto.com');
INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('5', 'Augusto Bernardo Sales', 'augustosales@xpto.com');
INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('6', 'Alice Rosa Araújo', 'aalicerosaaraujo@metroquali.com.br');
INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('7', 'Igor Corte Real', 'cortereal@nhrtaxiaereo.com');
INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('8', 'Bruna Lara Carvalho', 'bcarvalho@nhrtaxiaereo.com');
INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('9', 'Sophia Eduarda da Cruz', 'sophiaeduarda1@hotamail.com');
INSERT INTO tb_facilitador (id_facilitador, nome, email) VALUES ('10', 'Vicente Kevin Lucca dos Santos', 'luccadossantos@audiogeni.com.br');

INSERT INTO tb_turma_facilitador (id_turma, id_facilitador) VALUES ('1', '1' );
INSERT INTO tb_turma_facilitador (id_turma, id_facilitador) VALUES ('1', '2' );
INSERT INTO tb_turma_facilitador (id_turma, id_facilitador) VALUES ('2', '5' );
INSERT INTO tb_turma_facilitador (id_turma, id_facilitador) VALUES ('2', '3' );
INSERT INTO tb_turma_facilitador (id_turma, id_facilitador) VALUES ('3', '2' );
INSERT INTO tb_turma_facilitador (id_turma, id_facilitador) VALUES ('3', '4' );

-- Query

--Selecionar a quantidade total de estudantes cadastrados no banco;
select count(*) from tb_aluno;

-- Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados;
select cu.nome, al.nome, al.id_aluno from tb_aluno al 
INNER JOIN tb_turma tu
ON al.id_turma = tu.id_turma
INNER JOIN tb_curso cu
ON cu.id_curso = tu.id_curso;

-- Selecionar quais pessoas facilitadoras atuam em mais de uma turma.
select count(tf.id_facilitador) qntd, fa.nome  from tb_turma_facilitador tf
INNER JOIN tb_facilitador fa
ON tf.id_facilitador = fa.id_facilitador
GROUP BY fa.id_facilitador
HAVING count(tf.id_facilitador)>1;
