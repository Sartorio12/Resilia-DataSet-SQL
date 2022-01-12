## Projeto-Resilia-3
# Banco de Dados - Resilia
- **Meu deus, eu não entendo nada de banco de dados, o que é isso que vocês fizeram ?**

   Calma lá que eu vou te explicar, nossa equipe fez a coleta de dados de vários setores diferentes da Resilia ( estudantes, facilitadores, funcionários, etc... )
   e colocamos tudo isso muito bonitinho dentro de tabelas, para facilitar a procura e gestão de dados dentro da empresa, agilizando assim processos que antes
   demandariam horas.

- **Tudo bem, já entendi, mas quem faz parte da sua equipe ?**

   Bem, a nossa equipe é composta por:
  
   - Mateus Sartorio - github.com/Sartorio12
   - Pedro André - github.com/pedroandre1712
   - Juliano - github.com/JulianoMata
   - Fernanda - github.com/FernandaBz
  
   Somos todos estudantes da Resilia Educação, cursando Análise de Dados, possivelmente um dia seremos analistas de dados.
 
 - **Ok, vocês provavelmente fizeram um belo trabalho em equipe, dá pra mostrar como ficou o banco de dados ?**
 
   Sim, vou mostrar pra você, uma forma bem fácil de se visualizar dados é com diagramas ! Saca só o nosso:
   
   ![img](https://i.imgur.com/bmLXlki.png) 
   
   Nele você consegue verificar todas as chaves primárias e estrangeiras, e como elas se relacionam dentro do banco de dados.
   
 - **Nossa, ficou espetacular, aposto que vocês vão tirar a avaliação máxima nisso aí, e como vocês fazem as consultas nisso ?**
 
   Então, todo o banco foi implementado dentro de um programinha chamado PostgreSQL, é um programa que lê, executa e armazena
   scripts SQL, que nada mais são que linhas de código que fazem a inserção de informação dentro de uma base de dados.
   
   Por meio desses scripts, é possível tanto inserir novas informações, visualizar o que contém o nosso banco e fazer pesquisas
   absolutamente personalizáveis, a fim de trazer respostas claras e precisas.
   
   Alguns exemplos de perguntas feitas ao banco e seus scripts:
   
   **Selecionar a quantidade total de estudantes cadastrados no banco;**
   ```
   select count(*) from tb_aluno;
   ```

   **Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados;**
   ```
   select cu.nome, al.nome, al.id_aluno from tb_aluno al
   INNER JOIN tb_turma tu
   ON al.id_turma = tu.id_turma
   INNER JOIN tb_curso cu
   ON cu.id_curso = tu.id_curso;
   ```
  
   **Selecionar quais pessoas facilitadoras atuam em mais de uma turma;**
   ```
   select count(tf.id_facilitador) qntd, fa.nome  from tb_turma_facilitador tf
   INNER JOIN tb_facilitador fa
   ON tf.id_facilitador = fa.id_facilitador
   GROUP BY fa.id_facilitador
   HAVING count(tf.id_facilitador)>1;
   ```

