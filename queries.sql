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

-- Quantos alunos foram formados em WebDev?
select count(id_aluno) from tb_aluno ta
inner join tb_turma tt ON ta.id_turma = tt.id_turma
having tt.modulo = 0;

-- Quantas turmas comecaram a partir de 2020 ?
select count(id_turma) from tb_turma
where data_inicio >= '01-01-2020';


-- Qual turma possui a maior quantidade de facilitadores? 
select id_turma, count(id_facilitador) from tb_turma tt
inner join tb_turma_facilitador ttf ON tt.id_turma = ttf.id_turma
group by id_turma
order by count(id_facilitador) desc
limit 1;